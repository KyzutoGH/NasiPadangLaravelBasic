@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        @foreach ($categories as $category)
        <div class="col-md-12 mb-4">
            <h2 class="text-primary">{{ $category->name }}</h2>
            <div class="jumbotron">
                <div class="row">
                    @php
                        $foods = App\Models\Food::where('category_id', $category->id)->get();
                    @endphp

                    @if($foods->isEmpty())
                        <div class="col-12 text-center">
                            <p class="lead">Segera Hadir</p>
                        </div>
                    @else
                        @foreach ($foods as $food)
                        <div class="col-md-3 mb-4">
                            <div class="card">
                                <img src="{{ asset('image/' . $food->image) }}" class="card-img-top" alt="{{ $food->name }}" style="height: 155px; object-fit: cover;">
                                <div class="card-body text-center">
                                    <h5 class="card-title">{{ $food->name }}</h5>
                                    <p class="card-text">Rp. {{ number_format($food->price, 0, ',', '.') }}</p>
                                    <a href="{{ route('detail', [$food->id]) }}" class="btn btn-primary">Lihat</a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection
