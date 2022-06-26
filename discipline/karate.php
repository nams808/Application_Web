<div class="modal fade" id="karate" tabindex="-1" aria-labelledby="karateTitre" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="karateTitre">Karate</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
                    </div>
                    <div class="modal-body">
                        <div class="ratio ratio-16x9">
                            <iframe id="karateIFrame" src="https://www.youtube.com/embed/e6fdazHv1U4" allowfullscreen></iframe>
                                
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
        // Arret de la video lorsqu'on clique sur la croix
document.addEventListener('DOMContentLoaded', function() {
  var sUrlVideoAccueil = document.getElementById('karateIFrame').getAttribute('src');
  var oModalYouTubeElement = document.getElementById('karate');
  oModalYouTubeElement.addEventListener('hide.bs.modal', function (event) {
    document.getElementById('karateIFrame').setAttribute('src', '');
  })
  var oModalYouTubeElement = document.getElementById('karate');
  oModalYouTubeElement.addEventListener('show.bs.modal', function (event) {
    document.getElementById('karateIFrame').setAttribute('src', sUrlVideoAccueil);
  })
});
</script>