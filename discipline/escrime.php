<div class="modal fade" id="escrime" tabindex="-1" aria-labelledby="escrimeTitre" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="judoTitre">Escrime</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
                    </div>
                    <div class="modal-body">
                        <div class="ratio ratio-16x9">
                            <iframe id="escrimeIFrame" src="https://www.youtube.com/embed/SB2KxrMiLi4" allowfullscreen></iframe>
                                
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
        // Arret de la video lorsqu'on clique sur la croix
document.addEventListener('DOMContentLoaded', function() {
  var sUrlVideoAccueil = document.getElementById('escrimeIFrame').getAttribute('src');
  var oModalYouTubeElement = document.getElementById('escrime');
  oModalYouTubeElement.addEventListener('hide.bs.modal', function (event) {
    document.getElementById('escrimeIFrame').setAttribute('src', '');
  })
  var oModalYouTubeElement = document.getElementById('escrime');
  oModalYouTubeElement.addEventListener('show.bs.modal', function (event) {
    document.getElementById('escrimeIFrame').setAttribute('src', sUrlVideoAccueil);
  })
});
</script>