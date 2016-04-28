var gulp        = require('gulp');
var browserSync = require('browser-sync').create();

// Static server
gulp.task('bs-server', function() {
	var files = [
		'css/*.css',
		'js/*.js',
		'static/*.html'
	];
	browserSync.init({
		files: files,
		server: {
			baseDir: "./"
		}
	});
});

// Proxy
gulp.task('bs-proxy', function() {
	browserSync.init({
		files: ['pages/**', 'css/*.css', 'js/*.js', 'utilities/**'],
		proxy: 'localhost/bronislawzelek.com/'
	});
});

// Autoversioning
gulp.task('new-version', function() {

	return gulp.src('css/*.css')
	.pipe(rev())
	.pipe(gulp.dest('test'))
	.pipe(rev.manifest())
	.pipe(gulp.dest('./'));
});