<div class="modal fade" id="judo" tabindex="-1" aria-labelledby="judoTitre" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="judoTitre">Judo</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
                    </div>
                    <div class="modal-body">
                        <div class="ratio ratio-16x9">
                            <iframe id="judoIFrame" src="https://www.youtube.com/embed/VRzp7DD7vJc" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
        // Arret de la video lorsqu'on clique sur la croix
document.addEventListener('DOMContentLoaded', function() {
  var sUrlVideoAccueil = document.getElementById('judoIFrame').getAttribute('src');
  var oModalYouTubeElement = document.getElementById('judo');
  oModalYouTubeElement.addEventListener('hide.bs.modal', function (event) {
    document.getElementById('judoIFrame').setAttribute('src', '');
  })
  var oModalYouTubeElement = document.getElementById('judo');
  oModalYouTubeElement.addEventListener('show.bs.modal', function (event) {
    document.getElementById('judoIFrame').setAttribute('src', sUrlVideoAccueil);
  })
});
</script>