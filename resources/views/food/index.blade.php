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
                    <span>Semua Makanan</span>
                    <a href="{{ route('food.create') }}" class="btn btn-primary">Tambah Makanan</a>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">Gambar</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Deskripsi</th>
                                <th scope="col">Harga</th>
                                <th scope="col">Kategori</th>
                                <th scope="col" colspan="2">
                                    <center>Aksi</center>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @if($foods->count() > 0)
                            @foreach($foods as $key => $food)
                            <tr>
                                <td><img src="{{ asset('image') }}/{{ $food->image }}" width="100"></td>
                                <td>{{ $food->name }}</td>
                                <td>{{ $food->description }}</td>
                                <td>{{ $food->price }}</td>
                                <td>{{ $food->category->name }}</td>
                                <td>
                                    <a href="{{ route('food.edit', $food->id) }}">
                                        <button class="btn btn-outline-success">Edit</button>
                                    </a>
                                </td>
                                <td>
                                    <form action="{{ route('food.destroy', $food->id) }}" method="post">
                                        @csrf
                                        {{ method_field('DELETE') }}
                                        <button class="btn btn-outline-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                            @else
                            <tr>
                                <td colspan="7">Tidak ada food yang dapat ditampilkan.</td>
                            </tr>
                            @endif
                        </tbody>
                    </table>
                    {{ $foods->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
