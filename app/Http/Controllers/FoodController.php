<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Food;
use Illuminate\Http\Request;

class FoodController extends Controller
{
    public function create()
    {
        return view('food.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'description' => 'required',
            'price' => 'required|integer',
            'category' => 'required',
            'image' => 'required|mimes:png,jpeg,jpg'
        ]);

        $image = $request->file('image');
        $name = time() . '.' . $image->getClientOriginalExtension();
        $destinationPath = public_path('/image');
        $image->move($destinationPath, $name);

        Food::create([
            'name' => $request->get('name'),
            'description' => $request->get('description'),
            'price' => $request->get('price'),
            'category_id' => $request->get('category'),
            'image' => $name
        ]);

        return redirect()->back()->with('message', 'Makanan berhasil ditambahkan');
    }
    public function index()
    {
        $foods = Food::latest()->paginate(5); // Paginasi 10 item per halaman
        return view('food.index', compact('foods'));
    }

    public function edit($id)
    {
        $food = food::find($id);

        return view('food.edit', compact('food'));
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'description' => 'required',
            'price' => 'required | integer',
            'category' => 'required',
            'image' => 'mimes: jpg,jpeg, png'
        ]);
        $food = food::find($id);
        $name = $food->image;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $name =
                time() . '.' . $image->getClientOriginalExtension();
            $destinationPath = public_path('/image');
            $image->move($destinationPath, $name);
        }
        $food->name = $request->get('name');
        $food->description = $request->get('description');
        $food->price = $request->get('price');
        $food->category_id = $request->get('category');
        $food->image = $name;
        $food->save();
        return
            redirect()->route('food.index')->with('message', 'Makanan information updated');
    }

    public function destroy($id)
    {
        $food = Food::find($id);
        $food->delete();
        return
            redirect()->route('food.index')->with('message', 'Makanan berhasil dihapus');
    }
    public function listFood(){
        $categories = Category::with('food')->get();
        return view('index', compact('categories'));
    }
    public function detailFood($id){
        $food = Food::find($id);
        return view('detail', compact('food'));
    }
}
