<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::latest()->get();
        return view('category.index', compact('categories'));
    }
    public function create()
    {
        return view('category.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, ['name'=> 'required|min:3']);
        Category::create([
            'name' => $request->get('name')
        ]);
        return redirect()->back()->with('message', 'Kategori ' . $request->get('name') . ' berhasil dibuat');
    }
    public function edit($id)
    {
        $category = Category::find($id);
        return view('category.edit', compact('category'));
    }
    public function update(Request $request, $id){
        $this->validate($request, ['name'=> 'required|min:3']);
        $category = Category::find($id);
        $category->name = $request->get('name');
        $category->save();
        return redirect()->route('category.index')->with('message','Kategory '.$request->get('name') .' Berhasil Diupdate');
    }
    public function destroy($id)
    {
        $category = Category::find($id);
        $category->delete();
        return redirect()->route('category.index')->with('message','kategori berhasil dihapus');
    }
}
