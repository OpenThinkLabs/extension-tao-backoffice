<div class="main-container flex-container-main-form">
    <h2><?= __('Create a remote list') ?></h2>

    <div class="form-content">
        <?= get_data('form') ?>
    </div>
</div>

<div class="data-container-wrapper flex-container-remainder">
    <?php foreach (get_data('lists') as $list): ?>
        <section id='list-data_<?= $list['uri'] ?>' class="data-container list-container">
            <header class="container-title">
                <h6><?= _dh($list['label']) ?></h6>
            </header>
            <div class="container-content" id='list-elements_<?= $list['uri'] ?>'>
                <ol>
                    <?php foreach ($list['elements'] as $level => $element): ?>
                        <li id="list-element_<?= $level ?>">
                            <span class="list-element"
                                  id="list-element_<?= $level ?>_<?= $element['uri'] ?>">
                                <?= _dh($element['label']) ?>
                            </span>
                        </li>
                    <?php endforeach ?>
                </ol>
            </div>
            <footer class="data-container-footer action-bar">
                <button
                    type="button"
                    title="<?= __('Reload this list') ?>"
                    class="icon-reload list-reload-btn btn-info small rgt"
                    data-uri="<?= $list['uri'] ?>"
                >
                </button>
                <button
                    type="button"
                    title="<?= __('Delete this list') ?>"
                    class="icon-bin list-delete-btn btn-warning small rgt"
                    data-uri="<?= $list['uri'] ?>"
                >
                </button>
            </footer>
        </section>
    <?php endforeach ?>
</div>
