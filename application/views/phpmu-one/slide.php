<?php
echo "<div class='jumbotron'>
          <div class='slider-wrapper theme-default'>
            <div id='slider' class='nivoSlider'>";
$slider = $this->model_main->slide();
foreach ($slider->result_array() as $row) {
      echo "<img class='img-thumbnail' width='100%' src='" . base_url() . "asset/foto_slide/" . $row['gambar'] . "'>";
}
echo "</div>
          </div>
      </div>";