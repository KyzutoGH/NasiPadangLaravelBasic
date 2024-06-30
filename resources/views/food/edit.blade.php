@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            @if(Session::has('message'))
            <div class="alert alert-success">{{ Session::get('message') }}</div>
            @endif
            <form action="{{ route('food.update', $food->id) }}" method="post" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="card">
                    <div class="card-header">Update Makanan</div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" value="{{ $food->name }}" class="form-control @error('name') is-invalid @enderror">
                            @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="description">Deskripsi</label>
                            <input type="text" name="description" value="{{ $food->description }}" class="form-control @error('description') is-invalid @enderror">
                            @error('description')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="price">Harga</label>
                            <input type="number" name="price" value="{{ $food->price }}" class="form-control @error('price') is-invalid @enderror">
                            @error('price')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="category">Kategori</label>
                            <select name="category" class="form-control @error('category') is-invalid @enderror">
                                <option value="">Pilih Kategori</option>
                                @foreach (App\Models\Category::all() as $category)
                                <option value="{{ $category->id }}" @if($food->category_id == $category->id) selected @endif>{{ $category->name }}</option>
                                @endforeach
                            </select>
                            @error('category')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="image">Foto</label>
                            <input type="file" name="image" class="form-control @error('image') is-invalid @enderror">
                            @error('image')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <button class="btn btn-outline-primary" type="submit">Submit</button>
                            <a href="{{ route('food.index') }}" class="btn btn-outline-secondary">Kembali</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
