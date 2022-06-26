<div class="modal fade" id="pencakSilat" tabindex="-1" aria-labelledby="pencakTitre" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="pencakTitre">Pencak Silat</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
                    </div>
                    <div class="modal-body">
                        <div class="ratio ratio-16x9">
                            <iframe id="pencakIFrame" src="https://www.youtube.com/embed/4tvtTsx4LUU" allowfullscreen></iframe>
                                
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
        // Arret de la video lorsqu'on clique sur la croix
document.addEventListener('DOMContentLoaded', function() {
  var sUrlVideoAccueil = document.getElementById('pencakIFrame').getAttribute('src');
  var oModalYouTubeElement = document.getElementById('pencakSilat');
  oModalYouTubeElement.addEventListener('hide.bs.modal', function (event) {
    document.getElementById('pencakIFrame').setAttribute('src', '');
  })
  var oModalYouTubeElement = document.getElementById('pencakSilat');
  oModalYouTubeElement.addEventListener('show.bs.modal', function (event) {
    document.getElementById('pencakIFrame').setAttribute('src', sUrlVideoAccueil);
  })
});
</script>