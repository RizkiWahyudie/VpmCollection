<?php
$mp = $this->db->query("SELECT * FROM identitas")->row();
$data['maps'] = $mp->maps;
echo "
<iframe width='100%' height='350' style='margin-top:2rem;margin-bottom:4rem;border-radius:2rem;' frameborder='0'
    scrolling='no' marginheight='0' marginwidth='0' src='$maps'></iframe>";
?>