<?php 

use App\Http\Controllers\Teacher\TimetableController;
use Illuminate\Support\Facades\Route;

Route::middleware(['auth', 'verified'])->group(function () {
    Route::prefix('teacher')->name('teacher.')->group(function () {
        Route::get('timetable', [TimetableController::class, 'index'])->name('timetable');
        // Route::get('another', [TimetableController::class, 'index'])->name('another');
    });
});
