<%-- 
    Document   : inc_options
    Created on : Jul 7, 2013, 9:03:24 AM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="options-panel">
    <div class="options">
        <div class="center layout">
            <label>Layout</label><br><br>
            <a href="#" class="standart active">standard</a>
            <a href="#" class="boxed">boxed</a>
            <a href="#" class="wide">wide</a>
            <div class="clearfix"></div>
            <hr>
        </div>
        <div class="left">
            <label>Color</label>
            <input class="minicolors" type="text" value="#fff84b" data-default-value="#fff84b"><br>
            <br>
            <div class="color-box">
                <div class="color-scheme" style="background-color: #e1ff69;" data-color="#e1ff69"></div>
                <div class="color-scheme" style="background-color: #93ff4b;" data-color="#93ff4b"></div>
                <div class="color-scheme" style="background-color: #4bff5c;" data-color="#4bff5c"></div>
                <div class="color-scheme" style="background-color: #4bffa8;" data-color="#4bffa8"></div>
                <div class="color-scheme" style="background-color: #97feff;" data-color="#97feff"></div>
                <div class="color-scheme" style="background-color: #4bffd7;" data-color="#4bffd7"></div>
                <div class="color-scheme" style="background-color: #4bfff0;" data-color="#4bfff0"></div>
                <div class="color-scheme" style="background-color: #4bdbff;" data-color="#4bdbff"></div>
                <div class="color-scheme" style="background-color: #5eb5ff;" data-color="#5eb5ff"></div>
                <div class="color-scheme" style="background-color: #a4b3ff;" data-color="#a4b3ff"></div>
                <div class="color-scheme" style="background-color: #cd62ff;" data-color="#cd62ff"></div>
                <div class="color-scheme" style="background-color: #ff67ab;" data-color="#ff67ab"></div>
                <div class="color-scheme" style="background-color: #ff819f;" data-color="#ff819f"></div>
                <div class="color-scheme" style="background-color: #ff97f6;" data-color="#ff97f6"></div>
                <div class="color-scheme" style="background-color: #ffba69;" data-color="#ffba69"></div>
                <div class="color-scheme" style="background-color: #ff865c;" data-color="#ff865c"></div>
            </div>
            <div class="clearfix"></div>
            <a href="#" class="reset-theme-color">Default Color</a>
            <div class="clearfix"></div>
        </div>
        <div class="right">
            <label>Patterns</label>
            <div class="clearfix"></div>
            <div class="patterns-box" style="background: red;">
                <div class="pattern-scheme" style="background: url('img/patterns/bgnoise_lg.png');" data-pattern="img/patterns/bgnoise_lg.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/black_linen_v2.png');" data-pattern="img/patterns/black_linen_v2.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/black_scales.png');" data-pattern="img/patterns/black_scales.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/carbon_fibre_v2.png');" data-pattern="img/patterns/carbon_fibre_v2.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/cardboard.png');" data-pattern="img/patterns/cardboard.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/circles.png');" data-pattern="img/patterns/circles.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/crissXcross.png');" data-pattern="img/patterns/crissXcross.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/crosses.png');" data-pattern="img/patterns/crosses.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/cubes.png');" data-pattern="img/patterns/cubes.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/dark_brick_wall.png');" data-pattern="img/patterns/dark_brick_wall.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/dark_circles.png');" data-pattern="img/patterns/dark_circles.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/dark_leather.png');" data-pattern="img/patterns/dark_leather.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/dark_mosaic.png');" data-pattern="img/patterns/dark_mosaic.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/diagonal-noise.png');" data-pattern="img/patterns/diagonal-noise.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/diamonds.png');" data-pattern="img/patterns/diamonds.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/elastoplast.png');" data-pattern="img/patterns/elastoplast.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/elegant_grid.png');" data-pattern="img/patterns/elegant_grid.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/fancy_deboss.png');" data-pattern="img/patterns/fancy_deboss.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/felt.png');" data-pattern="img/patterns/felt.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/flowers.png');" data-pattern="img/patterns/flowers.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/gold_scale.png');" data-pattern="img/patterns/gold_scale.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/green_dust_scratch.png');" data-pattern="img/patterns/green_dust_scratch.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/inflicted.png');" data-pattern="img/patterns/inflicted.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/light_alu.png');" data-pattern="img/patterns/light_alu.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/light_checkered_tiles.png');" data-pattern="img/patterns/light_checkered_tiles.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/littleknobs.png');" data-pattern="img/patterns/littleknobs.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/mirrored_squares.png');" data-pattern="img/patterns/mirrored_squares.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/noise_pattern_with_crosslines.png');" data-pattern="img/patterns/noise_pattern_with_crosslines.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/paven.png');" data-pattern="img/patterns/paven.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/polaroid.png');" data-pattern="img/patterns/polaroid.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/pool_table.png');" data-pattern="img/patterns/pool_table.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/project_papper.png');" data-pattern="img/patterns/project_papper.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/real_cf.png');" data-pattern="img/patterns/real_cf.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/rip_jobs.png');" data-pattern="img/patterns/rip_jobs.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/robots.png');" data-pattern="img/patterns/robots.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/roughcloth.png');" data-pattern="img/patterns/roughcloth.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/rubber_grip.png');" data-pattern="img/patterns/rubber_grip.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/silver_scales.png');" data-pattern="img/patterns/silver_scales.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/small_tiles.png');" data-pattern="img/patterns/small_tiles.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/soft_circle_scales.png');" data-pattern="img/patterns/soft_circle_scales.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/square_bg.png');" data-pattern="img/patterns/square_bg.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/squares.png');" data-pattern="img/patterns/squares.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/stucco.png');" data-pattern="img/patterns/stucco.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/triangles.png');" data-pattern="img/patterns/triangles.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/type.png');" data-pattern="img/patterns/type.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/washi.png');" data-pattern="img/patterns/washi.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/white_texture.png');" data-pattern="img/patterns/white_texture.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/whitey.png');" data-pattern="img/patterns/whitey.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/woven.png');" data-pattern="img/patterns/woven.png"></div>
                <div class="pattern-scheme" style="background: url('img/patterns/xv.png');" data-pattern="img/patterns/xv.png"></div>
            </div>
            <div class="clearfix"></div>
            <a href="#" class="reset-theme-pattern">Default Pattern</a>
        </div>
    </div>
    <div class="button">&nbsp;</div>
</div>