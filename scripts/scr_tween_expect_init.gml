///scr_tween_expect_init()
/// Initializes the instance's tweens if it's not initialized.

if !variable_instance_exists(id, "_tween_count") {
    scr_tween_init();
}

