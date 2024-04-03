<?php
// Inclure la bibliothèque Dompdf
require_once 'dompdf/autoload.inc.php';

use Dompdf\Dompdf;

// Créer une nouvelle instance de Dompdf
$dompdf = new Dompdf();

// Récupérer le contenu HTML de la page à convertir
$html = file_get_contents('http://localhost:3000/client.php#');

// Charger le HTML dans Dompdf
$dompdf->loadHtml($html);

// Rendre le HTML en PDF
$dompdf->render();

// Nom du fichier de sortie
$filename = 'output.pdf';

// Enregistrer le PDF sur le serveur
file_put_contents($filename, $dompdf->output());

// Afficher un message de réussite
echo "Le fichier PDF a été généré avec succès: <a href='$filename'>$filename</a>";
?>
