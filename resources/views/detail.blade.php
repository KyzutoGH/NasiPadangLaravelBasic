@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">Produk</div>
                <img src="{{ asset('image/' . $food->image) }}" class="img-responsive" width="250">
                <div class="card-body">
                    <!-- Bagian ini bisa diisi dengan informasi tambahan jika diperlukan -->
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Detail</div>
                <div class="card-body">
                    <h2>{{ $food->name }}</h2>
                    <p class="lead">{{ $food->description }}</p>
                    <h4>Rp. {{ number_format($food->price, 0, ',', '.') }}</h4>
                    <a href="{{ url('/') }}" class="btn btn-outline-secondary mt-3">Kembali</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
