@extends('layouts.app')

@section('content')

<div class="container">
    <a href="{{ route('users.create') }}" class="btn btn-primary">Add User</a>
    <form action="{{ route('users.search') }}" method="GET" class="ml-2">
        @csrf
        <div class="input-group">
            <input type="text" name="search" class="form-control" placeholder="Search users">
            <div class="input-group-append">
                <button type="submit" class="btn btn-outline-secondary">Search</button>
            </div>
        </div>
    </form>
</div>

<div class="container mt-4">
    <div class="card">
        <div class="card-header">{{ __('Registered Users') }}</div>

        <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $user)
                        <tr>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>
                                <a href="{{ route('users.edit', $user->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                <button type="button" class="btn btn-danger btn-sm" onclick="confirmDelete({{ $user->id }})">Delete</button>
                                <form id="delete-form-{{ $user->id }}" action="{{ route('users.destroy', $user->id) }}" method="POST" style="display: none">
                                    @csrf
                                    @method('DELETE')
                                </form>

                                <script>
                                    function confirmDelete(userId) {
                                        if (confirm('Are you sure you want to delete this user?')) {
                                            event.preventDefault();
                                            document.getElementById('delete-form-' + userId).submit();
                                        }
                                    }
                                </script>

                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

@if (session('status'))
    <div class="alert alert-success mt-4" role="alert">
        {{ session('status') }}
    </div>
@endif

@endsection
