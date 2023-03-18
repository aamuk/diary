<?php

/** @var Connection $connection */
$connection = require_once 'pdo.php';
// Read notes from database
$notes = $connection->getNotes();

$projects = $connection->getProjects();

$currentNote = [
    'id' => '',
    'title' => '',
    'description' => ''
];
if (isset($_GET['id'])) {
    $currentNote = $connection->getNoteById($_GET['id']);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<!-- Projects -->
<h2>Projects</h2>
<div>
        <div class="">
        <?php foreach ($projects as $project): ?>

            <div class="mx-auto max-w-md overflow-hidden rounded-lg bg-white shadow m-4">
                <img src="<?php echo $project['image'] ?>" class="object-contain align-middle" alt="" />
                <div class="p-4">
                    <p class="mb-1 text-sm text-primary-500">Started • <time><?php echo date('d/m/Y', strtotime($project['start_date'])) ?></time></p>
                    <p class="mb-1 text-sm text-primary-500">Status • <?php echo $project['status'] ?></p>
                    <a href="?id=<?php echo $project['id'] ?>">
                        <h3 class="text-xl font-medium text-gray-900"><?php echo $project['name'] ?></h3>
                    </a>
                    <p class="mt-1 text-gray-500"><?php echo $project['description'] ?></p>
                    <div class="mt-4 flex gap-2">
                        <span class="inline-flex items-center gap-1 rounded-full bg-orange-50 px-2 py-1 text-xs font-semibold text-orange-600"> Wordpress </span>
                    </div>
                </div>
            </div>

        <?php endforeach; ?>
    </div>
</div>


<!-- Notes -->
<h2>Notes</h2>
<div>
    <form class="new-note" action="create.php" method="post">
        <input type="hidden" name="id" value="<?php echo $currentNote['id'] ?>">
        <input type="text" name="title" placeholder="Note title" autocomplete="off"
               value="<?php echo $currentNote['title'] ?>">
        <textarea name="description" cols="30" rows="4"
                  placeholder="Note Description"><?php echo $currentNote['description'] ?></textarea>
        <button>
            <?php if ($currentNote['id']): ?>
                Update
            <?php else: ?>
                New note
            <?php endif ?>
        </button>
    </form>
    <div class="notes">
        <?php foreach ($notes as $note): ?>
            <div class="note">
                <div class="title">
                    <a href="?id=<?php echo $note['id'] ?>">
                        <?php echo $note['title'] ?>
                    </a>
                </div>
                <div class="description">
                    <?php echo $note['description'] ?>
                </div>
                <small><?php echo date('d/m/Y H:i', strtotime($note['create_date'])) ?></small>
                <form action="delete.php" method="post">
                    <input type="hidden" name="id" value="<?php echo $note['id'] ?>">
                    <button class="close">X</button>
                </form>
            </div>
        <?php endforeach; ?>
    </div>
</div>
</body>
</html>
