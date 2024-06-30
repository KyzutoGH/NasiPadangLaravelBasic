@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            @if(Session::has('message'))
            <div class="alert alert-success">
                {{ Session::get('message') }}
            </div>
            @endif
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <span>Semua Kategori</span>
                    <a href="{{ route('category.create') }}" class="btn btn-primary">Tambah Kategori</a>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Nomor</th>
                                <th scope="col">Nama Kategori</th>
                                <th scope="col" colspan="2">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(count($categories) > 0)
                            @foreach($categories as $key => $category)
                            <tr>
                                <th scope="row">{{ $key + 1 }}</th>
                                <td>{{ $category->name }}</td>
                                <td>
                                    <a href="{{ route('category.edit', [$category->id]) }}">
                                        <button class="btn btn-outline-success">Edit</button>
                                    </a>
                                </td>
                                <td>
                                    <form action="{{ route('category.destroy', [$category->id]) }}" method="post">
                                        @csrf
                                        {{ method_field('DELETE') }}
                                        <button class="btn btn-outline-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                            @else
                            <tr>
                                <td colspan="4">Tidak ada kategori yang dapat ditampilkan.</td>
                            </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
