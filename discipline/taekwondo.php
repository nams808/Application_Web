<div class="modal fade" id="taekwondo" tabindex="-1" aria-labelledby="taekwondoTitre" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="taekwondoTitre">Taekwondo</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
                    </div>
                    <div class="modal-body">
                        <div class="ratio ratio-16x9">
                            <iframe id="oVideoYouTubeiFrame" src="https://www.youtube.com/embed/TKEbws4QhEk" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script>
// Arret de la video lorsqu'on clique sur la croix
document.addEventListener('DOMContentLoaded', function() {
  var sUrlVideoAccueil = document.getElementById('oVideoYouTubeiFrame').getAttribute('src');
  var oModalYouTubeElement = document.getElementById('taekwondo');
  oModalYouTubeElement.addEventListener('hide.bs.modal', function (event) {
    document.getElementById('oVideoYouTubeiFrame').setAttribute('src', '');
  })
  var oModalYouTubeElement = document.getElementById('taekwondo');
  oModalYouTubeElement.addEventListener('show.bs.modal', function (event) {
    document.getElementById('oVideoYouTubeiFrame').setAttribute('src', sUrlVideoAccueil);
  })
});
</script>