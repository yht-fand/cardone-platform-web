var gulp = require('gulp'),
    sass = require('gulp-sass'),
    minifycss = require('gulp-minify-css'),
    uglify = require('gulp-uglify'),
    concat = require('gulp-concat'),
    rename = require('gulp-rename'),
    imagemin = require('gulp-imagemin'),
    jshint = require('gulp-jshint'),
    plumber = require('gulp-plumber');

var dev = false;

gulp.task('dist-app-html', function () {
    gulp.src('app/**/*.html')
        .pipe(plumber())
        .pipe(gulp.dest('dist'))
});

gulp.task('dist-app-scss', function () {
    gulp.src('app/**/*.scss')
        .pipe(plumber())
        .pipe(concat('index.min.css'))
        .pipe(sass())
        .pipe(minifycss())
        .pipe(gulp.dest('dist'))
});

gulp.task('dist-app-js', function () {
    if (dev) {
        gulp.src('app/**/*.js')
            .pipe(plumber())
            .pipe(jshint('.jshintrc'))
            .pipe(jshint.reporter('default'))
            //.pipe(uglify())
            .pipe(gulp.dest('dist'));
    } else {
        gulp.src('app/**/*.js')
            .pipe(plumber())
            .pipe(jshint('.jshintrc'))
            .pipe(jshint.reporter('default'))
            .pipe(uglify())
            .pipe(gulp.dest('dist'));
    }
});

gulp.task('dist-app-json', function () {
    gulp.src('app/**/*.json')
        .pipe(jshint.reporter('default'))
        .pipe(gulp.dest('dist'));
});

gulp.task('dist-app-image', function () {
    gulp.src('app/**/*.jpg')
        .pipe(plumber())
        .pipe(imagemin())
        .pipe(gulp.dest('dist/'));

    gulp.src('app/**/*.png')
        .pipe(plumber())
        .pipe(imagemin())
        .pipe(gulp.dest('dist/'));

    gulp.src('app/**/*.gif')
        .pipe(plumber())
        .pipe(imagemin())
        .pipe(gulp.dest('dist/'));
});

gulp.task('dist-page-api', function () {
    gulp.src('page-api/**')
        .pipe(plumber())
        .pipe(gulp.dest('dist/page-api/'));
});

gulp.task('dist-web-api', function () {
    gulp.src('web-api/**')
        .pipe(plumber())
        .pipe(gulp.dest('dist/web-api/'));
});

gulp.task('dist-ui-api', function () {
    gulp.src('ui-api/**')
        .pipe(plumber())
        .pipe(gulp.dest('dist/ui-api/'));
});

gulp.task('old', function () {
    gulp.src('old/**')
        .pipe(plumber())
        .pipe(gulp.dest('dist/'));
});

gulp.task('dist-bower', function () {
    gulp.src('bower_components/backbone/backbone-min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/backbone/1.2.3/'));

    gulp.src('bower_components/backbone.marionette/lib/backbone.marionette.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/backbone.marionette/2.4.3/'));

    gulp.src('bower_components/bsie/bootstrap/css/bootstrap.css').pipe(plumber()).pipe(gulp.dest('dist/lib/bsie/css/'));
    gulp.src('bower_components/bsie/bootstrap/css/bootstrap-ie6.min.css').pipe(plumber()).pipe(gulp.dest('dist/lib/bsie/css/'));
    gulp.src('bower_components/bsie/bootstrap/css/ie.css').pipe(plumber()).pipe(gulp.dest('dist/lib/bsie/css/'));
    gulp.src('bower_components/bsie/bootstrap/img/**').pipe(plumber()).pipe(gulp.dest('dist/lib/bsie/img/'));
    gulp.src('bower_components/bsie/bootstrap/js/**/*.min.*').pipe(plumber()).pipe(gulp.dest('dist/lib/bsie/js/'));
    gulp.src('bower_components/bsie/js/bootstrap-ie.js').pipe(plumber()).pipe(uglify()).pipe(gulp.dest('dist/lib/bsie/js/'));

    gulp.src('bower_components/bootstrap-datepicker/dist/**/*.min.*').pipe(plumber()).pipe(gulp.dest('dist/lib/bootstrap-datepicker/1.5.0/'));
    gulp.src('bower_components/bootstrap-datepicker/dist/locales/**').pipe(plumber()).pipe(gulp.dest('dist/lib/bootstrap-datepicker/1.5.0/locales/'));

    gulp.src('bower_components/requirejs/require.js').pipe(plumber()).pipe(uglify()).pipe(gulp.dest('dist/lib/requirejs/2.1.22/'));
    gulp.src('bower_components/require-css/css.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/require-css/0.1.8/'));
    gulp.src('bower_components/text/text.js').pipe(plumber()).pipe(uglify()).pipe(gulp.dest('dist/lib/text/2.0.14/'));
    gulp.src('bower_components/i18n/i18n.js').pipe(plumber()).pipe(uglify()).pipe(gulp.dest('dist/lib/i18n/2.0.6/'));

    gulp.src('bower_components/jquery/dist/jquery.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/jquery/1.11.1/'));

    gulp.src('bower_components/json2/**/*.js').pipe(plumber()).pipe(uglify()).pipe(gulp.dest('dist/lib/json2/'));

    gulp.src('bower_components/underscore/**/*-min.*').pipe(plumber()).pipe(gulp.dest('dist/lib/underscore/1.8.3/'));

    gulp.src('bower_components/ztree/css/zTreeStyle/**').pipe(plumber()).pipe(gulp.dest('dist/lib/ztree/3.5.15/css'));
    gulp.src('bower_components/ztree/js/jquery.ztree.all-3.5.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/ztree/3.5.15/js/'));
    gulp.src('bower_components/ztree/js/jquery.ztree.core-3.5.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/ztree/3.5.15/js/'));
    gulp.src('bower_components/ztree/js/jquery.ztree.excheck-3.5.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/ztree/3.5.15/js/'));
    gulp.src('bower_components/ztree/js/jquery.ztree.exhide-3.5.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/ztree/3.5.15/js/'));

    gulp.src('bower_components/uikit/js/**/*.js').pipe(plumber()).pipe(gulp.dest('dist/lib/uikit/2.23.0/js/'));
    gulp.src('bower_components/uikit/css/**/*.css').pipe(plumber()).pipe(gulp.dest('dist/lib/uikit/2.23.0/css/'));
    gulp.src('bower_components/uikit/fonts/*.*').pipe(plumber()).pipe(gulp.dest('dist/lib/uikit/2.23.0/fonts/'));

    gulp.src('bower_components/select2/dist/js/**/*.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/select2/4.0.1/js/'));
    gulp.src('bower_components/select2/dist/js/i18n/**/*.js').pipe(plumber()).pipe(gulp.dest('dist/lib/select2/4.0.1/js/i18n/'));
    gulp.src('bower_components/select2/dist/css/**/*.min.css').pipe(plumber()).pipe(gulp.dest('dist/lib/select2/4.0.1/css/'));

    gulp.src('bower_components/smalot-bootstrap-datetimepicker/js/**/*.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/bootstrap-datetimepicker/2.3.5/js/'));
    gulp.src('bower_components/smalot-bootstrap-datetimepicker/js/locales/**/*.js').pipe(plumber()).pipe(gulp.dest('dist/lib/bootstrap-datetimepicker/2.3.5/js/locales/'));
    gulp.src('bower_components/smalot-bootstrap-datetimepicker/css/**/*.min.css').pipe(plumber()).pipe(gulp.dest('dist/lib/bootstrap-datetimepicker/2.3.5/css/'));
	
    gulp.src('bower_components/html5shiv/dist/*.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/html5shiv/3.7.3/'));

    gulp.src('bower_components/respond/dest/*.min.js').pipe(plumber()).pipe(gulp.dest('dist/lib/respond/1.4.2/'));
});

gulp.task('dist-lib', function () {
    gulp.src('lib/**')
        .pipe(plumber())
        .pipe(gulp.dest('dist/lib'));
});

gulp.task('default', ['dist-app-html', 'dist-app-scss', 'dist-app-js', 'dist-app-json', 'dist-page-api', 'dist-web-api', 'dist-ui-api', 'dist-bower', 'dist-lib'], function () {
});

gulp.task('init', ['default', 'dist-app-image', 'old'], function () {
});

gulp.task('watch', ['default'], function () {
    dev = true;

    gulp.watch('app/**/*.html', ['dist-app-html']);
    gulp.watch('app/**/*.scss', ['dist-app-scss']);
    gulp.watch('app/**/*.js', ['dist-app-js']);
    gulp.watch('app/**/*.json', ['dist-app-json']);
    gulp.watch('app/img/**', ['dist-app-image']);
    gulp.watch('page-api/**', ['dist-page-api']);
    gulp.watch('web-api/**', ['dist-web-api']);
    gulp.watch('ui-api/**', ['dist-ui-api']);
    }
);