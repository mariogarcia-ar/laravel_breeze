<?php 

use App\Http\Controllers\Admin\UsersController;
use Illuminate\Support\Facades\Route;

Route::middleware(['auth', 'verified'])->group(function () {
    Route::middleware('role:3')
        ->prefix('admin')->name('admin.')->group(function () {
        Route::get('timetable', [UsersController::class, 'index'])->name('users');
        // Route::get('another', [UsersController::class, 'index'])->name('another');
    });
});
