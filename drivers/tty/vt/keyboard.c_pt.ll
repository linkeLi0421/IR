; ModuleID = '/llk/IR/drivers/tty/vt/keyboard.c_pt.bc'
source_filename = "../drivers/tty/vt/keyboard.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_keyboard_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_keyboard_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_keyboard_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_keyboard_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_keyboard_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_keyboard_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kd_mksound:\09\09\09\09\09"
module asm "\09.asciz \09\22kd_mksound\22\09\09\09\09\09"
module asm "__kstrtabns_kd_mksound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vt_get_leds:\09\09\09\09\09"
module asm "\09.asciz \09\22vt_get_leds\22\09\09\09\09\09"
module asm "__kstrtabns_vt_get_leds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vt_spawn_console = type { %struct.spinlock, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.21 }
%union.anon.21 = type { ptr }
%struct.kbd_struct = type { i8, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { ptr }
%struct.kbdiacruc = type { i32, i32, i32 }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.kbd_led_trigger = type { %struct.led_trigger, i32 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.kbd_repeat = type { i32, i32 }
%struct.kbdiacr = type { i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kbdiacrs = type { i32, [256 x %struct.kbdiacr] }
%struct.kbdiacrsuc = type { i32, [256 x %struct.kbdiacruc] }
%struct.getset_keycode_data = type { %struct.input_keymap_entry, i32 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.kbkeycode = type { i32, i32 }
%struct.kbentry = type { i8, i8, i16 }
%struct.kbsentry = type { i8, [512 x i8] }
%struct.keyboard_notifier_param = type { ptr, i32, i32, i32, i32 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.40, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.40 = type { ptr }
%struct.llist_head = type { ptr }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.41, %struct.anon.42, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.41 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.42 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }

@vt_spawn_con = dso_local global %struct.vt_spawn_console zeroinitializer, align 4
@keyboard_notifier_list = internal global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_register_keyboard_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_keyboard_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_keyboard_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_keyboard_notifier to i32), ptr @__kstrtab_register_keyboard_notifier, ptr @__kstrtabns_register_keyboard_notifier }, section "___ksymtab_gpl+register_keyboard_notifier", align 4
@__kstrtab_unregister_keyboard_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_keyboard_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_keyboard_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_keyboard_notifier to i32), ptr @__kstrtab_unregister_keyboard_notifier, ptr @__kstrtabns_unregister_keyboard_notifier }, section "___ksymtab_gpl+unregister_keyboard_notifier", align 4
@kd_mksound_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @kd_nosound, i32 0 }, align 4
@kbd_handler = internal global %struct.input_handler { ptr null, ptr @kbd_event, ptr null, ptr null, ptr @kbd_match, ptr @kbd_connect, ptr @kbd_disconnect, ptr @kbd_start, i8 0, i32 0, ptr @.str.1, ptr @kbd_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_kd_mksound = external dso_local constant [0 x i8], align 1
@__kstrtabns_kd_mksound = external dso_local constant [0 x i8], align 1
@__ksymtab_kd_mksound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kd_mksound to i32), ptr @__kstrtab_kd_mksound, ptr @__kstrtabns_kd_mksound }, section "___ksymtab+kd_mksound", align 4
@vt_switch = internal unnamed_addr global i1 false, align 1
@kbd_event_lock = internal global %struct.spinlock zeroinitializer, align 4
@__UNIQUE_ID_brl_timeout226 = internal constant [95 x i8] c"keyboard.parm=brl_timeout:Braille keys release delay in ms (0 for commit on first key release)\00", section ".modinfo", align 1
@__param_str_brl_timeout = internal constant [21 x i8] c"keyboard.brl_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@brl_timeout = internal global i32 300, align 4
@__param_brl_timeout = internal constant %struct.kernel_param { ptr @__param_str_brl_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.21 { ptr @brl_timeout } }, section "__param", align 4
@__UNIQUE_ID_brl_timeouttype227 = internal constant [35 x i8] c"keyboard.parmtype=brl_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_brl_nbchords228 = internal constant [95 x i8] c"keyboard.parm=brl_nbchords:Number of chords that produce a braille pattern (0 for dead chords)\00", section ".modinfo", align 1
@__param_str_brl_nbchords = internal constant [22 x i8] c"keyboard.brl_nbchords\00", align 1
@brl_nbchords = internal global i32 1, align 4
@__param_brl_nbchords = internal constant %struct.kernel_param { ptr @__param_str_brl_nbchords, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.21 { ptr @brl_nbchords } }, section "__param", align 4
@__UNIQUE_ID_brl_nbchordstype229 = internal constant [36 x i8] c"keyboard.parmtype=brl_nbchords:uint\00", section ".modinfo", align 1
@led_lock = internal global %struct.spinlock zeroinitializer, align 4
@ledioctl = internal unnamed_addr global i8 0, align 1
@kbd_table = internal global [63 x %struct.kbd_struct] zeroinitializer, align 1
@__kstrtab_vt_get_leds = external dso_local constant [0 x i8], align 1
@__kstrtabns_vt_get_leds = external dso_local constant [0 x i8], align 1
@__ksymtab_vt_get_leds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vt_get_leds to i32), ptr @__kstrtab_vt_get_leds, ptr @__kstrtabns_vt_get_leds }, section "___ksymtab_gpl+vt_get_leds", align 4
@default_utf8 = external dso_local local_unnamed_addr global i32, align 4
@keyboard_tasklet = internal global %struct.tasklet_struct { ptr null, i32 0, %struct.atomic_t { i32 1 }, i8 1, %union.anon.69 { ptr @kbd_bh }, i32 0 }, align 4
@accent_table_size = external dso_local local_unnamed_addr global i32, align 4
@accent_table = external dso_local local_unnamed_addr global [0 x %struct.kbdiacruc], align 4
@func_buf_lock = internal global %struct.spinlock zeroinitializer, align 4
@func_table = external dso_local local_unnamed_addr global [256 x ptr], align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@shift_state = internal unnamed_addr global i32 0, align 4
@kd_nosound.zero = internal global i32 0, align 4
@shift_down = internal unnamed_addr global [9 x i8] zeroinitializer, align 1
@key_down = internal global [24 x i32] zeroinitializer, align 4
@key_maps = external dso_local local_unnamed_addr global [256 x ptr], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"kbd\00", align 1
@kbd_ids = internal constant [3 x %struct.input_device_id] [%struct.input_device_id { i32 16, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 16, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 262144], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer], align 4
@do_poke_blanked_console = external dso_local local_unnamed_addr global i32, align 4
@vc_cons = external dso_local global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@kbd = internal unnamed_addr global ptr @kbd_table, align 4
@rep = internal unnamed_addr global i8 0, align 1
@__func__.kbd_keycode = private unnamed_addr constant [12 x i8] c"kbd_keycode\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\014keyboard: can't emulate rawmode for keycode %d\0A\00", align 1
@k_handler = internal unnamed_addr constant [16 x ptr] [ptr @k_self, ptr @k_fn, ptr @k_spec, ptr @k_pad, ptr @k_dead, ptr @k_cons, ptr @k_cur, ptr @k_shift, ptr @k_meta, ptr @k_ascii, ptr @k_lock, ptr @k_lowercase, ptr @k_slock, ptr @k_dead2, ptr @k_brl, ptr @k_ignore], align 4
@x86_keycodes = internal unnamed_addr constant <{ [240 x i16], [16 x i16] }> <{ [240 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 118, i16 86, i16 87, i16 88, i16 115, i16 120, i16 119, i16 121, i16 112, i16 123, i16 92, i16 284, i16 285, i16 309, i16 0, i16 312, i16 91, i16 327, i16 328, i16 329, i16 331, i16 333, i16 335, i16 336, i16 337, i16 338, i16 339, i16 367, i16 288, i16 302, i16 304, i16 350, i16 89, i16 334, i16 326, i16 267, i16 126, i16 268, i16 269, i16 125, i16 347, i16 348, i16 349, i16 360, i16 261, i16 262, i16 263, i16 268, i16 376, i16 100, i16 101, i16 321, i16 316, i16 373, i16 286, i16 289, i16 102, i16 351, i16 355, i16 103, i16 104, i16 105, i16 275, i16 287, i16 279, i16 258, i16 106, i16 274, i16 107, i16 294, i16 364, i16 358, i16 363, i16 362, i16 361, i16 291, i16 108, i16 381, i16 281, i16 290, i16 272, i16 292, i16 305, i16 280, i16 99, i16 112, i16 257, i16 306, i16 359, i16 113, i16 114, i16 264, i16 117, i16 271, i16 374, i16 379, i16 265, i16 266, i16 93, i16 94, i16 95, i16 85, i16 259, i16 375, i16 260, i16 90, i16 116, i16 377, i16 109, i16 111, i16 277, i16 278, i16 282, i16 283, i16 295, i16 296, i16 297, i16 299, i16 300, i16 301, i16 293, i16 303, i16 307, i16 308, i16 310, i16 313, i16 314, i16 315, i16 317, i16 318, i16 319, i16 320, i16 357, i16 322, i16 323, i16 324, i16 325, i16 276, i16 330, i16 332, i16 340, i16 365, i16 342, i16 343, i16 344, i16 345, i16 346, i16 356, i16 270, i16 341, i16 368, i16 369, i16 370, i16 371, i16 372], [16 x i16] zeroinitializer }>, align 2
@diacr = internal unnamed_addr global i32 0, align 4
@dead_key_next = internal unnamed_addr global i1 false, align 1
@fn_handler = internal unnamed_addr constant [20 x ptr] [ptr @fn_null, ptr @fn_enter, ptr @fn_show_ptregs, ptr @fn_show_mem, ptr @fn_show_state, ptr @fn_send_intr, ptr @fn_lastcons, ptr @fn_caps_toggle, ptr @fn_num, ptr @fn_hold, ptr @fn_scroll_forw, ptr @fn_scroll_back, ptr @fn_boot_it, ptr @fn_caps_on, ptr @fn_compose, ptr @fn_SAK, ptr @fn_dec_console, ptr @fn_inc_console, ptr @fn_spawn_con, ptr @fn_bare_num], align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@last_console = external dso_local local_unnamed_addr global i32, align 4
@applkey.buf = internal global [4 x i8] c"\1BO\00\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@want_console = external dso_local local_unnamed_addr global i32, align 4
@k_pad.pad_chars = internal unnamed_addr constant [22 x i8] c"0123456789+-*/\0D,.?()#\00", align 1
@k_pad.app_map = internal unnamed_addr constant [22 x i8] c"pqrstuvwxylSRQMnnmPQS\00", align 1
@k_dead.ret_diacr = internal unnamed_addr constant [27 x i8] c"`'^~\22,_U.*=cki#o!?+-)(:n;$@", align 1
@k_cur.cur_chars = internal unnamed_addr constant [5 x i8] c"BDCA\00", align 1
@npadch_active = internal unnamed_addr global i1 false, align 1
@npadch_value = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"\013keyboard: k_lowercase was called - impossible\0A\00", align 1
@k_brl.pressed = internal unnamed_addr global i32 0, align 4
@k_brl.committing = internal unnamed_addr global i32 0, align 4
@k_brl.releasestart = internal unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [64 x i8] c"\014keyboard: keyboard mode must be unicode for braille patterns\0A\00", align 1
@k_brlcommit.chords = internal unnamed_addr global i32 0, align 4
@k_brlcommit.committed = internal unnamed_addr global i32 0, align 4
@ledstate = internal unnamed_addr global i32 -1, align 4
@kbd_led_triggers = internal global [12 x %struct.kbd_led_trigger] [%struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.8, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 1 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.9, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 2 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.10, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 4 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.11, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 8 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.12, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 256 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.13, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 512 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.14, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 1024 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.15, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 2048 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.16, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 4096 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.17, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 8192 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.18, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 16384 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.19, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 32768 }], align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"kbd-scrolllock\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"kbd-numlock\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"kbd-capslock\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"kbd-kanalock\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"kbd-shiftlock\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"kbd-altgrlock\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"kbd-ctrllock\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"kbd-altlock\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"kbd-shiftllock\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"kbd-shiftrlock\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"kbd-ctrlllock\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"kbd-ctrlrlock\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"\013keyboard: error %d while registering trigger %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@keymap_count = external dso_local local_unnamed_addr global i32, align 4
@max_vals = internal unnamed_addr constant [15 x i8] c"\FF\FF\13\13\1A\FF\03\08\FF\19\08\FF\08\FF\0A", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vt_kdskbsent.is_kmalloc = internal unnamed_addr global [8 x i32] zeroinitializer, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_brl_nbchords228, ptr @__UNIQUE_ID_brl_nbchordstype229, ptr @__UNIQUE_ID_brl_timeout226, ptr @__UNIQUE_ID_brl_timeouttype227, ptr @__ksymtab_kd_mksound, ptr @__ksymtab_register_keyboard_notifier, ptr @__ksymtab_unregister_keyboard_notifier, ptr @__ksymtab_vt_get_leds, ptr @__param_brl_nbchords, ptr @__param_brl_timeout], section "llvm.metadata"
@switch.table.vt_do_kdgkbmode = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 3, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_keyboard_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @keyboard_notifier_list, ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_keyboard_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @keyboard_notifier_list, ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kd_mksound(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = tail call i32 @del_timer_sync(ptr noundef nonnull @kd_mksound_timer) #18
  %5 = call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull %3, ptr noundef nonnull @kd_sound_helper) #18
  %6 = load i32, ptr %3, align 4
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = add i32 %11, %1
  %13 = call i32 @mod_timer(ptr noundef nonnull @kd_mksound_timer, i32 noundef %12) #18
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_handler_for_each_handle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kd_sound_helper(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 5
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 262144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 11
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %1, align 4
  tail call void @input_inject_event(ptr noundef %0, i32 noundef 18, i32 noundef 2, i32 noundef %15) #18
  %16 = load i32, ptr %1, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14, %9
  %19 = load volatile i32, ptr %10, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %1, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  tail call void @input_inject_event(ptr noundef %0, i32 noundef 18, i32 noundef 1, i32 noundef %25) #18
  br label %26

26:                                               ; preds = %22, %18, %14, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kbd_rate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x %struct.kbd_repeat], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %3 = load i64, ptr %0, align 4
  store i64 %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.kbd_repeat, ptr %2, i32 1
  store i64 0, ptr %4, align 8
  %5 = call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull %2, ptr noundef nonnull @kbd_rate_helper) #18
  %6 = load i64, ptr %4, align 8
  store i64 %6, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kbd_rate_helper(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 5
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @input_inject_event(ptr noundef %0, i32 noundef 20, i32 noundef 0, i32 noundef %10) #18
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.kbd_repeat, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @input_inject_event(ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef %15) #18
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 24
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr %struct.kbd_repeat, ptr %1, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr %struct.input_dev, ptr %4, i32 0, i32 24, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.kbd_repeat, ptr %1, i32 1, i32 1
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %18, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_set_leds_compute_shiftstate() local_unnamed_addr #0 {
  store i1 true, ptr @vt_switch, align 1
  %1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  store i32 0, ptr @shift_state, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) @shift_down, i8 0, i32 9, i1 false) #18
  %6 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #18
  %7 = icmp ult i32 %6, 256
  br i1 %7, label %8, label %31

8:                                                ; preds = %27, %4
  %9 = phi i32 [ %29, %27 ], [ %6, %4 ]
  %10 = load ptr, ptr @key_maps, align 4
  %11 = getelementptr i16, ptr %10, i32 %9
  %12 = load i16, ptr %11, align 2
  %13 = lshr i16 %12, 8
  %14 = trunc i16 %13 to i8
  %15 = xor i8 %14, -16
  switch i8 %15, label %27 [
    i8 12, label %16
    i8 7, label %16
  ]

16:                                               ; preds = %8, %8
  %17 = and i16 %12, 255
  %18 = icmp eq i16 %17, 8
  %19 = select i1 %18, i16 0, i16 %17
  %20 = zext i16 %19 to i32
  %21 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = add i8 %22, 1
  store i8 %23, ptr %21, align 1
  %24 = shl nuw i32 1, %20
  %25 = load i32, ptr @shift_state, align 4
  %26 = or i32 %25, %24
  store i32 %26, ptr @shift_state, align 4
  br label %27

27:                                               ; preds = %16, %8
  %28 = add nuw nsw i32 %9, 1
  %29 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %28) #18
  %30 = icmp ult i32 %29, 256
  br i1 %30, label %8, label %31

31:                                               ; preds = %27, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %5) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_compute_shiftstate() unnamed_addr #0 {
  store i32 0, ptr @shift_state, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) @shift_down, i8 0, i32 9, i1 false)
  %1 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #18
  %2 = icmp ult i32 %1, 256
  br i1 %2, label %3, label %26

3:                                                ; preds = %22, %0
  %4 = phi i32 [ %24, %22 ], [ %1, %0 ]
  %5 = load ptr, ptr @key_maps, align 4
  %6 = getelementptr i16, ptr %5, i32 %4
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 8
  %9 = trunc i16 %8 to i8
  %10 = xor i8 %9, -16
  switch i8 %10, label %22 [
    i8 12, label %11
    i8 7, label %11
  ]

11:                                               ; preds = %3, %3
  %12 = and i16 %7, 255
  %13 = icmp eq i16 %12, 8
  %14 = select i1 %13, i16 0, i16 %12
  %15 = zext i16 %14 to i32
  %16 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %17, 1
  store i8 %18, ptr %16, align 1
  %19 = shl nuw i32 1, %15
  %20 = load i32, ptr @shift_state, align 4
  %21 = or i32 %20, %19
  store i32 %21, ptr @shift_state, align 4
  br label %22

22:                                               ; preds = %11, %3
  %23 = add nuw nsw i32 %4, 1
  %24 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %23) #18
  %25 = icmp ult i32 %24, 256
  br i1 %25, label %3, label %26

26:                                               ; preds = %22, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @setledstate(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %4 = icmp ult i32 %1, 8
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr @ledioctl, align 1
  %7 = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 1
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, -2
  store i8 %13, ptr %11, align 1
  br label %14

14:                                               ; preds = %10, %5
  %15 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %18

18:                                               ; preds = %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_get_leds(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %4 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 15
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %8, %1
  %10 = and i32 %9, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %3) #18
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_set_led_state(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %4 = icmp ult i32 %1, 8
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr @ledioctl, align 1
  %7 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 1
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, -2
  store i8 %13, ptr %11, align 1
  br label %14

14:                                               ; preds = %10, %5
  %15 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %18

18:                                               ; preds = %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_kbd_con_start(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %3 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, -3
  store i8 %5, ptr %3, align 1
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %9

9:                                                ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_kbd_con_stop(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %3 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 2
  store i8 %5, ptr %3, align 1
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %9

9:                                                ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %2) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @kbd_init() local_unnamed_addr #5 section ".init.text" {
  %1 = load i32, ptr @default_utf8, align 4
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i8 0, i8 48
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i32 [ 0, %0 ], [ %19, %4 ]
  %6 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %5
  %7 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %5, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %5, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %8, -32
  store i8 %11, ptr %7, align 1
  store i8 0, ptr %6, align 1
  %12 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %5, i32 1
  store i8 0, ptr %12, align 1
  %13 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %5, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, -32
  %16 = or i8 %15, 20
  store i8 %16, ptr %13, align 1
  %17 = and i8 %10, -128
  %18 = or i8 %3, %17
  store i8 %18, ptr %9, align 1
  %19 = add nuw nsw i32 %5, 1
  %20 = icmp eq i32 %19, 63
  br i1 %20, label %21, label %4

21:                                               ; preds = %4
  %22 = tail call i32 @led_trigger_register(ptr noundef nonnull @kbd_led_triggers) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @kbd_led_triggers, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %22, ptr noundef %25) #19
  br label %27

27:                                               ; preds = %24, %21
  %28 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 1)) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 1), align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %28, ptr noundef %31) #19
  br label %33

33:                                               ; preds = %30, %27
  %34 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 2)) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 2), align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %34, ptr noundef %37) #19
  br label %39

39:                                               ; preds = %36, %33
  %40 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 3)) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 3), align 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %40, ptr noundef %43) #19
  br label %45

45:                                               ; preds = %42, %39
  %46 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 4)) #18
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 4), align 4
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %46, ptr noundef %49) #19
  br label %51

51:                                               ; preds = %48, %45
  %52 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 5)) #18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 5), align 4
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %52, ptr noundef %55) #19
  br label %57

57:                                               ; preds = %54, %51
  %58 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 6)) #18
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 6), align 4
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %58, ptr noundef %61) #19
  br label %63

63:                                               ; preds = %60, %57
  %64 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 7)) #18
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 7), align 4
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %64, ptr noundef %67) #19
  br label %69

69:                                               ; preds = %66, %63
  %70 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 8)) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 8), align 4
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %70, ptr noundef %73) #19
  br label %75

75:                                               ; preds = %72, %69
  %76 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 9)) #18
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 9), align 4
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %76, ptr noundef %79) #19
  br label %81

81:                                               ; preds = %78, %75
  %82 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 10)) #18
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 10), align 4
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %82, ptr noundef %85) #19
  br label %87

87:                                               ; preds = %84, %81
  %88 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 11)) #18
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 11), align 4
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %88, ptr noundef %91) #19
  br label %93

93:                                               ; preds = %90, %87
  %94 = tail call i32 @input_register_handler(ptr noundef nonnull @kbd_handler) #18
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !10
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !11
  %98 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %101

101:                                              ; preds = %100, %96, %93
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_do_diacrit(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %0, label %169 [
    i32 19274, label %4
    i32 19450, label %59
    i32 19275, label %93
    i32 19451, label %139
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 768) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %169, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %10 = load i32, ptr @accent_table_size, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %12, %8
  %13 = phi i32 [ %29, %12 ], [ 0, %8 ]
  %14 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @conv_uni_to_8bit(i32 noundef %15) #18
  %17 = trunc i32 %16 to i8
  %18 = getelementptr %struct.kbdiacr, ptr %6, i32 %13
  store i8 %17, ptr %18, align 1
  %19 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %13, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @conv_uni_to_8bit(i32 noundef %20) #18
  %22 = trunc i32 %21 to i8
  %23 = getelementptr %struct.kbdiacr, ptr %6, i32 %13, i32 1
  store i8 %22, ptr %23, align 1
  %24 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %13, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @conv_uni_to_8bit(i32 noundef %25) #18
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.kbdiacr, ptr %6, i32 %13, i32 2
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %13, 1
  %30 = icmp eq i32 %29, %10
  br i1 %30, label %31, label %12

31:                                               ; preds = %12, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %9) #18
  %32 = tail call ptr @llvm.thread.pointer() #18
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #14, !srcloc !12
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %10, i32 -1090519041) #18, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.kbdiacrs, ptr %1, i32 0, i32 1
  %41 = mul i32 %10, 3
  %42 = icmp ugt i32 %41, 768
  br i1 %42, label %43, label %44, !prof !16

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef 768, i32 noundef %41) #18
  br label %57

44:                                               ; preds = %39
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 %41, i32 -1090519040) #21, !srcloc !17
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #14, !srcloc !12
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %52 = tail call i32 @arm_copy_to_user(ptr noundef %40, ptr noundef nonnull %6, i32 noundef %41) #18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i32 [ %52, %48 ], [ %41, %44 ]
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 -14
  br label %57

57:                                               ; preds = %53, %43, %31
  %58 = phi i32 [ -14, %31 ], [ -14, %43 ], [ %56, %53 ]
  tail call void @kfree(ptr noundef nonnull %6) #18
  br label %169

59:                                               ; preds = %3
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3264, i32 noundef 3072) #20
  %62 = icmp eq ptr %61, null
  br i1 %62, label %169, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %65 = load i32, ptr @accent_table_size, align 4
  %66 = mul i32 %65, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %61, ptr nonnull align 4 @accent_table, i32 %66, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %64) #18
  %67 = tail call ptr @llvm.thread.pointer() #18
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %69 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %68) #14, !srcloc !12
  %70 = and i32 %69, -13
  %71 = or i32 %70, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %72 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %65, i32 -1090519041) #18, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.kbdiacrsuc, ptr %1, i32 0, i32 1
  %76 = icmp ugt i32 %66, 3072
  br i1 %76, label %77, label %78, !prof !16

77:                                               ; preds = %74
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef 3072, i32 noundef %66) #18
  br label %91

78:                                               ; preds = %74
  %79 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %75, i32 %66, i32 -1090519040) #21, !srcloc !17
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %68) #14, !srcloc !12
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %86 = tail call i32 @arm_copy_to_user(ptr noundef %75, ptr noundef nonnull %61, i32 noundef %66) #18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %86, %82 ], [ %66, %78 ]
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 0, i32 -14
  br label %91

91:                                               ; preds = %87, %77, %63
  %92 = phi i32 [ -14, %63 ], [ -14, %77 ], [ %90, %87 ]
  tail call void @kfree(ptr noundef nonnull %61) #18
  br label %169

93:                                               ; preds = %3
  %94 = icmp eq i32 %2, 0
  br i1 %94, label %169, label %95

95:                                               ; preds = %93
  %96 = tail call ptr @llvm.thread.pointer() #18
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %97) #14, !srcloc !12
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %101 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #18, !srcloc !19
  %102 = extractvalue { i32, i32 } %101, 0
  %103 = extractvalue { i32, i32 } %101, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %105, label %169

105:                                              ; preds = %95
  %106 = icmp ugt i32 %103, 255
  br i1 %106, label %169, label %107

107:                                              ; preds = %105
  %108 = icmp eq i32 %103, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  store i32 %103, ptr @accent_table_size, align 4
  br label %136

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.kbdiacrs, ptr %1, i32 0, i32 1
  %113 = mul nuw nsw i32 %103, 3
  %114 = tail call ptr @memdup_user(ptr noundef %112, i32 noundef %113) #18
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = ptrtoint ptr %114 to i32
  br label %169

118:                                              ; preds = %111
  %119 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  store i32 %103, ptr @accent_table_size, align 4
  br label %120

120:                                              ; preds = %120, %118
  %121 = phi i32 [ %134, %120 ], [ 0, %118 ]
  %122 = getelementptr %struct.kbdiacr, ptr %114, i32 %121
  %123 = load i8, ptr %122, align 1
  %124 = tail call i32 @conv_8bit_to_uni(i8 noundef zeroext %123) #18
  %125 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %121
  store i32 %124, ptr %125, align 4
  %126 = getelementptr %struct.kbdiacr, ptr %114, i32 %121, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = tail call i32 @conv_8bit_to_uni(i8 noundef zeroext %127) #18
  %129 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %121, i32 1
  store i32 %128, ptr %129, align 4
  %130 = getelementptr %struct.kbdiacr, ptr %114, i32 %121, i32 2
  %131 = load i8, ptr %130, align 1
  %132 = tail call i32 @conv_8bit_to_uni(i8 noundef zeroext %131) #18
  %133 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %121, i32 2
  store i32 %132, ptr %133, align 4
  %134 = add nuw i32 %121, 1
  %135 = icmp eq i32 %134, %103
  br i1 %135, label %136, label %120

136:                                              ; preds = %120, %109
  %137 = phi i32 [ %110, %109 ], [ %119, %120 ]
  %138 = phi ptr [ null, %109 ], [ %114, %120 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %137) #18
  tail call void @kfree(ptr noundef %138) #18
  br label %169

139:                                              ; preds = %3
  %140 = icmp eq i32 %2, 0
  br i1 %140, label %169, label %141

141:                                              ; preds = %139
  %142 = tail call ptr @llvm.thread.pointer() #18
  %143 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 3
  %144 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %143) #14, !srcloc !12
  %145 = and i32 %144, -13
  %146 = or i32 %145, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %147 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #18, !srcloc !20
  %148 = extractvalue { i32, i32 } %147, 0
  %149 = extractvalue { i32, i32 } %147, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %141
  %152 = icmp ugt i32 %149, 255
  br i1 %152, label %169, label %153

153:                                              ; preds = %151
  %154 = icmp eq i32 %149, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %153
  %156 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  br label %166

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.kbdiacrsuc, ptr %1, i32 0, i32 1
  %159 = mul nuw nsw i32 %149, 12
  %160 = tail call ptr @memdup_user(ptr noundef %158, i32 noundef %159) #18
  %161 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = ptrtoint ptr %160 to i32
  br label %169

164:                                              ; preds = %157
  %165 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 @accent_table, ptr align 1 %160, i32 %159, i1 false)
  br label %166

166:                                              ; preds = %164, %155
  %167 = phi i32 [ %156, %155 ], [ %165, %164 ]
  %168 = phi ptr [ null, %155 ], [ %160, %164 ]
  store i32 %149, ptr @accent_table_size, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %167) #18
  tail call void @kfree(ptr noundef %168) #18
  br label %169

169:                                              ; preds = %166, %162, %151, %141, %139, %136, %116, %105, %95, %93, %91, %59, %57, %4, %3
  %170 = phi i32 [ %58, %57 ], [ -12, %4 ], [ %92, %91 ], [ -12, %59 ], [ %117, %116 ], [ 0, %136 ], [ -1, %93 ], [ -14, %95 ], [ -22, %105 ], [ %163, %162 ], [ 0, %166 ], [ -1, %139 ], [ -14, %141 ], [ -22, %151 ], [ 0, %3 ]
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conv_uni_to_8bit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conv_8bit_to_uni(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdskbmode(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  switch i32 %1, label %71 [
    i32 0, label %65
    i32 2, label %4
    i32 1, label %5
    i32 3, label %34
    i32 4, label %64
  ]

4:                                                ; preds = %2
  br label %65

5:                                                ; preds = %2
  %6 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, -113
  store i8 %8, ptr %6, align 1
  store i32 0, ptr @shift_state, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) @shift_down, i8 0, i32 9, i1 false) #18
  %9 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #18
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %71

11:                                               ; preds = %30, %5
  %12 = phi i32 [ %32, %30 ], [ %9, %5 ]
  %13 = load ptr, ptr @key_maps, align 4
  %14 = getelementptr i16, ptr %13, i32 %12
  %15 = load i16, ptr %14, align 2
  %16 = lshr i16 %15, 8
  %17 = trunc i16 %16 to i8
  %18 = xor i8 %17, -16
  switch i8 %18, label %30 [
    i8 12, label %19
    i8 7, label %19
  ]

19:                                               ; preds = %11, %11
  %20 = and i16 %15, 255
  %21 = icmp eq i16 %20, 8
  %22 = select i1 %21, i16 0, i16 %20
  %23 = zext i16 %22 to i32
  %24 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = add i8 %25, 1
  store i8 %26, ptr %24, align 1
  %27 = shl nuw i32 1, %23
  %28 = load i32, ptr @shift_state, align 4
  %29 = or i32 %28, %27
  store i32 %29, ptr @shift_state, align 4
  br label %30

30:                                               ; preds = %19, %11
  %31 = add nuw nsw i32 %12, 1
  %32 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %31) #18
  %33 = icmp ult i32 %32, 256
  br i1 %33, label %11, label %71

34:                                               ; preds = %2
  %35 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, -113
  %38 = or i8 %37, 48
  store i8 %38, ptr %35, align 1
  store i32 0, ptr @shift_state, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) @shift_down, i8 0, i32 9, i1 false) #18
  %39 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #18
  %40 = icmp ult i32 %39, 256
  br i1 %40, label %41, label %71

41:                                               ; preds = %60, %34
  %42 = phi i32 [ %62, %60 ], [ %39, %34 ]
  %43 = load ptr, ptr @key_maps, align 4
  %44 = getelementptr i16, ptr %43, i32 %42
  %45 = load i16, ptr %44, align 2
  %46 = lshr i16 %45, 8
  %47 = trunc i16 %46 to i8
  %48 = xor i8 %47, -16
  switch i8 %48, label %60 [
    i8 12, label %49
    i8 7, label %49
  ]

49:                                               ; preds = %41, %41
  %50 = and i16 %45, 255
  %51 = icmp eq i16 %50, 8
  %52 = select i1 %51, i16 0, i16 %50
  %53 = zext i16 %52 to i32
  %54 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = add i8 %55, 1
  store i8 %56, ptr %54, align 1
  %57 = shl nuw i32 1, %53
  %58 = load i32, ptr @shift_state, align 4
  %59 = or i32 %58, %57
  store i32 %59, ptr @shift_state, align 4
  br label %60

60:                                               ; preds = %49, %41
  %61 = add nuw nsw i32 %42, 1
  %62 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %61) #18
  %63 = icmp ult i32 %62, 256
  br i1 %63, label %41, label %71

64:                                               ; preds = %2
  br label %65

65:                                               ; preds = %64, %4, %2
  %66 = phi i8 [ 64, %64 ], [ 16, %4 ], [ 32, %2 ]
  %67 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, -113
  %70 = or i8 %69, %66
  store i8 %70, ptr %67, align 1
  br label %71

71:                                               ; preds = %65, %60, %34, %30, %5, %2
  %72 = phi i32 [ -22, %2 ], [ 0, %5 ], [ 0, %34 ], [ 0, %65 ], [ 0, %30 ], [ 0, %60 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %3) #18
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdskbmeta(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  switch i32 %1, label %12 [
    i32 3, label %4
    i32 4, label %8
  ]

4:                                                ; preds = %2
  %5 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, -17
  store i8 %7, ptr %5, align 1
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = or i8 %10, 16
  store i8 %11, ptr %9, align 1
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i32 [ 0, %8 ], [ 0, %4 ], [ -22, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %3) #18
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_do_kbkeycode_ioctl(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.getset_keycode_data, align 4
  %5 = alloca %struct.getset_keycode_data, align 4
  %6 = alloca %struct.kbkeycode, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store i64 0, ptr %6, align 8, !annotation !21
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !22
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !23

10:                                               ; preds = %3
  %11 = tail call ptr @llvm.thread.pointer() #18
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #14, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 8) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #18, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !23

18:                                               ; preds = %10, %3
  %19 = phi i32 [ %16, %10 ], [ 8, %3 ]
  %20 = sub i32 8, %19
  %21 = getelementptr i8, ptr %6, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #18
  br label %53

22:                                               ; preds = %10
  switch i32 %0, label %53 [
    i32 19276, label %23
    i32 19277, label %41
  ]

23:                                               ; preds = %22
  %24 = load i32, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 40, i1 false) #18
  %25 = getelementptr inbounds %struct.input_keymap_entry, ptr %5, i32 0, i32 1
  store i8 4, ptr %25, align 1
  %26 = getelementptr inbounds %struct.getset_keycode_data, ptr %5, i32 0, i32 1
  store i32 -19, ptr %26, align 4
  %27 = getelementptr inbounds %struct.input_keymap_entry, ptr %5, i32 0, i32 4
  store i32 %24, ptr %27, align 4
  %28 = call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull %5, ptr noundef nonnull @getkeycode_helper) #18
  %29 = load i32, ptr %26, align 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.input_keymap_entry, ptr %5, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = select i1 %30, i32 %32, i32 %29
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #18
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %53

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.kbkeycode, ptr %1, i32 0, i32 1
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #14, !srcloc !12
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #18, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %40 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %36, i32 %33, i32 -1090519041) #18, !srcloc !24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #18, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  br label %53

41:                                               ; preds = %22
  %42 = icmp eq i32 %2, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %6, align 8
  %45 = getelementptr inbounds %struct.kbkeycode, ptr %6, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #18
  %47 = getelementptr inbounds %struct.input_keymap_entry, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false) #18
  store i8 4, ptr %47, align 1
  %48 = getelementptr inbounds %struct.input_keymap_entry, ptr %4, i32 0, i32 3
  store i32 %46, ptr %48, align 4
  %49 = getelementptr inbounds %struct.getset_keycode_data, ptr %4, i32 0, i32 1
  store i32 -19, ptr %49, align 4
  %50 = getelementptr inbounds %struct.input_keymap_entry, ptr %4, i32 0, i32 4
  store i32 %44, ptr %50, align 4
  %51 = call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull %4, ptr noundef nonnull @setkeycode_helper) #18
  %52 = load i32, ptr %49, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #18
  br label %53

53:                                               ; preds = %43, %41, %35, %23, %22, %18
  %54 = phi i32 [ -1, %41 ], [ 0, %22 ], [ %52, %43 ], [ %40, %35 ], [ %33, %23 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdsk_ioctl(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.kbentry, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !21
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #21, !srcloc !22
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !23

9:                                                ; preds = %4
  %10 = tail call ptr @llvm.thread.pointer() #18
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #14, !srcloc !12
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 4) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #18, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !23

17:                                               ; preds = %9, %4
  %18 = phi i32 [ %15, %9 ], [ 4, %4 ]
  %19 = sub i32 4, %18
  %20 = getelementptr i8, ptr %5, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #18
  br label %150

21:                                               ; preds = %9
  switch i32 %0, label %150 [
    i32 19270, label %22
    i32 19271, label %53
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.kbentry, ptr %1, i32 0, i32 2
  %24 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %3, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.kbentry, ptr %5, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = load i8, ptr %5, align 4
  %29 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %30 = zext i8 %28 to i32
  %31 = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %22
  %35 = zext i8 %27 to i32
  %36 = getelementptr i16, ptr %32, i32 %35
  %37 = load i16, ptr %36, align 2
  %38 = xor i16 %37, -4096
  %39 = and i8 %25, 112
  %40 = icmp ne i8 %39, 48
  %41 = icmp ugt i16 %38, 3839
  %42 = select i1 %40, i1 %41, i1 false
  %43 = select i1 %42, i16 512, i16 %38
  br label %47

44:                                               ; preds = %22
  %45 = icmp eq i8 %27, 0
  %46 = select i1 %45, i16 639, i16 512
  br label %47

47:                                               ; preds = %44, %34
  %48 = phi i16 [ %43, %34 ], [ %46, %44 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %29) #18
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #14, !srcloc !12
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #18, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %52 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %23, i16 %48, i32 -1090519041) #18, !srcloc !25
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #18, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  br label %150

53:                                               ; preds = %21
  %54 = icmp eq i32 %2, 0
  br i1 %54, label %150, label %55

55:                                               ; preds = %53
  %56 = call zeroext i1 @capable(i32 noundef 26) #18
  br i1 %56, label %57, label %150

57:                                               ; preds = %55
  %58 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %3, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.kbentry, ptr %5, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = load i8, ptr %5, align 4
  %63 = getelementptr inbounds %struct.kbentry, ptr %5, i32 0, i32 2
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i8 %61, 0
  %66 = zext i16 %64 to i32
  %67 = icmp eq i16 %64, 639
  %68 = and i1 %65, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %57
  %70 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %71 = zext i8 %62 to i32
  %72 = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = icmp ne i8 %62, 0
  %75 = icmp ne ptr %73, null
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  store ptr null, ptr %72, align 4
  %78 = load i16, ptr %73, align 2
  %79 = icmp eq i16 %78, -3458
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  call void @kfree(ptr noundef nonnull %73) #18
  %81 = load i32, ptr @keymap_count, align 4
  %82 = add i32 %81, -1
  store i32 %82, ptr @keymap_count, align 4
  br label %83

83:                                               ; preds = %80, %77, %69
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %70) #18
  br label %150

84:                                               ; preds = %57
  %85 = lshr i32 %66, 8
  %86 = icmp ult i16 %64, 3840
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = and i32 %66, 255
  %89 = getelementptr [15 x i8], ptr @max_vals, i32 0, i32 %85
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ugt i32 %88, %91
  %93 = or i1 %65, %92
  %94 = select i1 %92, i32 -22, i32 0
  br i1 %93, label %150, label %100

95:                                               ; preds = %84
  %96 = and i8 %59, 112
  %97 = icmp ne i8 %96, 48
  %98 = or i1 %97, %65
  %99 = select i1 %97, i32 -22, i32 0
  br i1 %98, label %150, label %100

100:                                              ; preds = %95, %87
  %101 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %102 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3264, i32 noundef 512) #20
  %103 = icmp eq ptr %102, null
  br i1 %103, label %150, label %104

104:                                              ; preds = %100
  %105 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %106 = zext i8 %62 to i32
  %107 = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %106
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i32, ptr @keymap_count, align 4
  %112 = icmp ugt i32 %111, 255
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call zeroext i1 @capable(i32 noundef 24) #18
  br i1 %114, label %115, label %124

115:                                              ; preds = %113, %110
  store ptr %102, ptr %107, align 4
  store i16 -3458, ptr %102, align 8
  br label %116

116:                                              ; preds = %116, %115
  %117 = phi i32 [ 1, %115 ], [ %119, %116 ]
  %118 = getelementptr i16, ptr %102, i32 %117
  store i16 -3584, ptr %118, align 2
  %119 = add nuw nsw i32 %117, 1
  %120 = icmp eq i32 %119, 256
  br i1 %120, label %121, label %116

121:                                              ; preds = %116
  %122 = load i32, ptr @keymap_count, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr @keymap_count, align 4
  br label %126

124:                                              ; preds = %113
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %105) #18
  call void @kfree(ptr noundef nonnull %102) #18
  br label %150

125:                                              ; preds = %104
  call void @kfree(ptr noundef nonnull %102) #18
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi ptr [ %108, %125 ], [ %102, %121 ]
  %128 = zext i8 %61 to i32
  %129 = getelementptr i16, ptr %127, i32 %128
  %130 = load i16, ptr %129, align 2
  %131 = xor i16 %130, -4096
  %132 = icmp eq i16 %131, %64
  br i1 %132, label %149, label %133

133:                                              ; preds = %126
  %134 = icmp eq i16 %131, 527
  %135 = icmp eq i16 %64, 527
  %136 = or i1 %135, %134
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = call zeroext i1 @capable(i32 noundef 21) #18
  br i1 %138, label %140, label %139

139:                                              ; preds = %137
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %105) #18
  br label %150

140:                                              ; preds = %137, %133
  %141 = xor i16 %64, -4096
  store i16 %141, ptr %129, align 2
  %142 = icmp eq i8 %62, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = and i16 %131, -256
  %145 = icmp eq i16 %144, 1792
  %146 = icmp eq i32 %85, 7
  %147 = or i1 %146, %145
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  call fastcc void @do_compute_shiftstate() #18
  br label %149

149:                                              ; preds = %148, %143, %140, %126
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %105) #18
  br label %150

150:                                              ; preds = %149, %139, %124, %100, %95, %87, %83, %55, %53, %47, %21, %17
  %151 = phi i32 [ %52, %47 ], [ -1, %55 ], [ -1, %53 ], [ 0, %21 ], [ 0, %83 ], [ 0, %149 ], [ -1, %139 ], [ -1, %124 ], [ %94, %87 ], [ %99, %95 ], [ -12, %100 ], [ -14, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdgkb_ioctl(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #18
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %5) #14, !srcloc !12
  %7 = and i32 %6, -13
  %8 = or i32 %7, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #18, !srcloc !26
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %3
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = and i32 %13, 255
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %14, i32 256) #18, !srcloc !27
  %16 = and i32 %15, %13
  %17 = trunc i32 %16 to i8
  switch i32 %0, label %60 [
    i32 19272, label %18
    i32 19273, label %47
  ]

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 512) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @func_buf_lock) #18
  %24 = and i32 %16, 255
  %25 = getelementptr [256 x ptr], ptr @func_table, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str, ptr %26
  %29 = tail call i32 @strlcpy(ptr noundef nonnull %20, ptr noundef %28, i32 noundef 512) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @func_buf_lock, i32 noundef %23) #18
  %30 = getelementptr inbounds %struct.kbsentry, ptr %1, i32 0, i32 1
  %31 = add i32 %29, 1
  %32 = icmp ugt i32 %31, 512
  br i1 %32, label %33, label %34, !prof !16

33:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef 512, i32 noundef %31) #18
  br label %60

34:                                               ; preds = %22
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %31, i32 -1090519040) #21, !srcloc !17
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %5) #14, !srcloc !12
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %42 = tail call i32 @arm_copy_to_user(ptr noundef %30, ptr noundef nonnull %20, i32 noundef %31) #18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i32 [ %42, %38 ], [ %31, %34 ]
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 -14
  br label %60

47:                                               ; preds = %12
  %48 = icmp eq i32 %2, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %47
  %50 = tail call zeroext i1 @capable(i32 noundef 26) #18
  br i1 %50, label %51, label %63

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.kbsentry, ptr %1, i32 0, i32 1
  %53 = tail call ptr @strndup_user(ptr noundef %52, i32 noundef 512) #18
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = ptrtoint ptr %53 to i32
  br label %63

57:                                               ; preds = %51
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @func_buf_lock) #18
  %59 = tail call fastcc ptr @vt_kdskbsent(ptr noundef %53, i8 noundef zeroext %17)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @func_buf_lock, i32 noundef %58) #18
  br label %60

60:                                               ; preds = %57, %43, %33, %12
  %61 = phi i32 [ 0, %12 ], [ 0, %57 ], [ -14, %33 ], [ %46, %43 ]
  %62 = phi ptr [ null, %12 ], [ %59, %57 ], [ %20, %33 ], [ %20, %43 ]
  tail call void @kfree(ptr noundef %62) #18
  br label %63

63:                                               ; preds = %60, %55, %49, %47, %18, %3
  %64 = phi i32 [ %61, %60 ], [ %56, %55 ], [ -14, %3 ], [ -1, %49 ], [ -1, %47 ], [ -12, %18 ]
  ret i32 %64
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc ptr @vt_kdskbsent(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #7 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr [256 x ptr], ptr @func_table, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @strlen(ptr noundef nonnull %5)
  %9 = tail call i32 @strlen(ptr noundef %0)
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @strcpy(ptr noundef nonnull %5, ptr noundef %0)
  br label %23

13:                                               ; preds = %7, %2
  store ptr %0, ptr %4, align 4
  %14 = and i32 %3, 31
  %15 = shl nuw i32 1, %14
  %16 = lshr i32 %3, 5
  %17 = getelementptr i32, ptr @vt_kdskbsent.is_kmalloc, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, ptr %17, align 4
  %20 = and i32 %18, %15
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr null, ptr %5
  br label %23

23:                                               ; preds = %13, %11
  %24 = phi ptr [ %0, %11 ], [ %22, %13 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdskled(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %1, label %74 [
    i32 19300, label %5
    i32 19301, label %22
    i32 19249, label %45
    i32 19250, label %55
  ]

5:                                                ; preds = %4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %7 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 15
  %11 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = shl i8 %12, 4
  %14 = or i8 %10, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %6) #18
  %15 = inttoptr i32 %2 to ptr
  %16 = tail call ptr @llvm.thread.pointer() #18
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #14, !srcloc !12
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %15, i8 %14, i32 -1090519041) #18, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  br label %74

22:                                               ; preds = %4
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %74, label %24

24:                                               ; preds = %22
  %25 = and i32 %2, -120
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %29 = trunc i32 %2 to i8
  %30 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = shl nuw i8 %29, 1
  %33 = and i8 %32, 14
  %34 = and i8 %31, -31
  %35 = or i8 %34, %33
  store i8 %35, ptr %30, align 1
  %36 = lshr i8 %29, 4
  %37 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, -16
  %40 = or i8 %39, %36
  store i8 %40, ptr %37, align 1
  %41 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %44

44:                                               ; preds = %43, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %28) #18
  br label %74

45:                                               ; preds = %4
  %46 = load i32, ptr @ledstate, align 4
  %47 = trunc i32 %46 to i8
  %48 = inttoptr i32 %2 to ptr
  %49 = tail call ptr @llvm.thread.pointer() #18
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %50) #14, !srcloc !12
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  %54 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %48, i8 %47, i32 -1090519041) #18, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #18, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !14
  br label %74

55:                                               ; preds = %4
  %56 = icmp eq i32 %3, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %55
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %59 = icmp ult i32 %2, 8
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = trunc i32 %2 to i8
  store i8 %61, ptr @ledioctl, align 1
  %62 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = or i8 %63, 1
  store i8 %64, ptr %62, align 1
  br label %69

65:                                               ; preds = %57
  %66 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, -2
  store i8 %68, ptr %66, align 1
  br label %69

69:                                               ; preds = %65, %60
  %70 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %73

73:                                               ; preds = %72, %69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %58) #18
  br label %74

74:                                               ; preds = %73, %55, %45, %44, %24, %22, %5, %4
  %75 = phi i32 [ 0, %73 ], [ %54, %45 ], [ 0, %44 ], [ %21, %5 ], [ -1, %22 ], [ -22, %24 ], [ -1, %55 ], [ -515, %4 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vt_do_kdgkbmode(i32 noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 3
  %3 = load i8, ptr %2, align 1
  %4 = lshr i8 %3, 4
  %5 = and i8 %4, 7
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds [4 x i32], ptr @switch.table.vt_do_kdgkbmode, i32 0, i32 %7
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ 1, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vt_do_kdgkbmeta(i32 noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 4
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i32 3, i32 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_reset_unicode(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %3 = load i32, ptr @default_utf8, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i8 0, i8 48
  %6 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, -113
  %9 = or i8 %8, %5
  store i8 %9, ptr %6, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vt_get_shift_state() local_unnamed_addr #8 {
  %1 = load i32, ptr @shift_state, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_reset_keyboard(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %4 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, -16
  %7 = or i8 %6, 4
  store i8 %7, ptr %4, align 1
  store i8 0, ptr %2, align 1
  %8 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 1
  store i8 0, ptr %8, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @led_lock) #18
  %9 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = shl i8 %12, 1
  %14 = and i8 %13, 30
  %15 = and i8 %10, -32
  %16 = or i8 %14, %15
  store i8 %16, ptr %9, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %17 = load i16, ptr @led_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @led_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %3) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vt_get_kbd_mode_bit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 4
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 31
  %6 = zext i8 %5 to i32
  %7 = lshr i32 %6, %1
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_set_kbd_mode_bit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %4 = shl nuw i32 1, %1
  %5 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = trunc i32 %4 to i8
  %8 = and i8 %7, 31
  %9 = or i8 %6, %8
  store i8 %9, ptr %5, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_clr_kbd_mode_bit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %4 = shl nuw i32 1, %1
  %5 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = trunc i32 %4 to i8
  %8 = xor i8 %7, -1
  %9 = or i8 %8, -32
  %10 = and i8 %6, %9
  store i8 %10, ptr %5, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kd_nosound(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull @kd_nosound.zero, ptr noundef nonnull @kd_sound_helper) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kbd_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.keyboard_notifier_param, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @kbd_event_lock) #18
  %6 = icmp eq i32 %1, 4
  %7 = icmp eq i32 %2, 3
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %72

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 5
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %733, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 9
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %733, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 3
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 17
  br i1 %24, label %25, label %733

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 3, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %733

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 3, i32 2
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %733

33:                                               ; preds = %29
  %34 = trunc i32 %3 to i8
  %35 = load i32, ptr @fg_console, align 4
  %36 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.vc_data, ptr %37, i32 0, i32 3
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %40
  store ptr %41, ptr @kbd, align 4
  %42 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %40, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 112
  %45 = icmp eq i8 %44, 32
  br i1 %45, label %46, label %733

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.tty_bufhead, ptr %37, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 6
  %61 = getelementptr i8, ptr %60, i32 %50
  %62 = getelementptr i8, ptr %61, i32 %52
  store i8 0, ptr %62, align 1
  %63 = load i32, ptr %49, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i32 [ %63, %59 ], [ %50, %54 ]
  %66 = add i32 %65, 1
  store i32 %66, ptr %49, align 4
  %67 = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 6
  %68 = getelementptr i8, ptr %67, i32 %65
  store i8 %34, ptr %68, align 1
  br label %71

69:                                               ; preds = %46
  %70 = tail call i32 @__tty_insert_flip_char(ptr noundef %37, i8 noundef zeroext %34, i8 noundef zeroext 0) #18
  br label %71

71:                                               ; preds = %69, %64
  tail call void @tty_flip_buffer_push(ptr noundef %37) #18
  br label %733

72:                                               ; preds = %4
  %73 = icmp eq i32 %1, 1
  %74 = icmp ult i32 %2, 768
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %733

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 5
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 9
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 3
  %90 = load i16, ptr %89, align 4
  %91 = icmp eq i16 %90, 17
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 3, i32 1
  %94 = load i16, ptr %93, align 2
  %95 = icmp eq i16 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 3, i32 2
  %98 = load i16, ptr %97, align 4
  %99 = icmp eq i16 %98, 1
  br label %100

100:                                              ; preds = %96, %92, %88, %83, %76
  %101 = phi i1 [ false, %83 ], [ false, %76 ], [ false, %92 ], [ false, %88 ], [ %99, %96 ]
  %102 = load i32, ptr @fg_console, align 4
  %103 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %102
  %104 = load ptr, ptr %103, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #18
  store ptr %104, ptr %5, align 4
  %105 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %5, i32 0, i32 1
  store i32 %3, ptr %105, align 4
  %106 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %5, i32 0, i32 2
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %5, i32 0, i32 3
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %5, i32 0, i32 4
  store i32 %2, ptr %108, align 4
  %109 = getelementptr inbounds %struct.tty_port, ptr %104, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.tty_struct, ptr %110, i32 0, i32 30
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store ptr %104, ptr %113, align 4
  br label %117

117:                                              ; preds = %116, %112, %100
  %118 = getelementptr inbounds %struct.vc_data, ptr %104, i32 0, i32 3
  %119 = load i16, ptr %118, align 4
  %120 = zext i16 %119 to i32
  %121 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %120
  store ptr %121, ptr @kbd, align 4
  %122 = icmp eq i32 %3, 2
  %123 = zext i1 %122 to i8
  store i8 %123, ptr @rep, align 1
  %124 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %120, i32 3
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %125, 112
  %127 = icmp eq i8 %126, 32
  %128 = xor i1 %127, true
  %129 = or i1 %101, %128
  br i1 %129, label %462, label %130

130:                                              ; preds = %117
  %131 = icmp eq i32 %3, 0
  %132 = select i1 %131, i8 -128, i8 0
  switch i32 %2, label %393 [
    i32 119, label %133
    i32 122, label %208
    i32 123, label %234
    i32 99, label %260
  ]

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.tty_buffer, ptr %135, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.tty_buffer, ptr %135, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.tty_buffer, ptr %135, i32 0, i32 5
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.tty_buffer, ptr %135, i32 0, i32 6
  %148 = getelementptr i8, ptr %147, i32 %137
  %149 = getelementptr i8, ptr %148, i32 %139
  store i8 0, ptr %149, align 1
  %150 = load i32, ptr %136, align 4
  br label %151

151:                                              ; preds = %146, %141
  %152 = phi i32 [ %150, %146 ], [ %137, %141 ]
  %153 = add i32 %152, 1
  store i32 %153, ptr %136, align 4
  %154 = getelementptr inbounds %struct.tty_buffer, ptr %135, i32 0, i32 6
  %155 = getelementptr i8, ptr %154, i32 %152
  store i8 -31, ptr %155, align 1
  br label %158

156:                                              ; preds = %133
  %157 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext -31, i8 noundef zeroext 0) #18
  br label %158

158:                                              ; preds = %156, %151
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  %159 = or i8 %132, 29
  %160 = load ptr, ptr %134, align 4
  %161 = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 5
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 6
  %173 = getelementptr i8, ptr %172, i32 %162
  %174 = getelementptr i8, ptr %173, i32 %164
  store i8 0, ptr %174, align 1
  %175 = load i32, ptr %161, align 4
  br label %176

176:                                              ; preds = %171, %166
  %177 = phi i32 [ %175, %171 ], [ %162, %166 ]
  %178 = add i32 %177, 1
  store i32 %178, ptr %161, align 4
  %179 = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 6
  %180 = getelementptr i8, ptr %179, i32 %177
  store i8 %159, ptr %180, align 1
  br label %183

181:                                              ; preds = %158
  %182 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %159, i8 noundef zeroext 0) #18
  br label %183

183:                                              ; preds = %181, %176
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  %184 = or i8 %132, 69
  %185 = load ptr, ptr %134, align 4
  %186 = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 5
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 6
  %198 = getelementptr i8, ptr %197, i32 %187
  %199 = getelementptr i8, ptr %198, i32 %189
  store i8 0, ptr %199, align 1
  %200 = load i32, ptr %186, align 4
  br label %201

201:                                              ; preds = %196, %191
  %202 = phi i32 [ %200, %196 ], [ %187, %191 ]
  %203 = add i32 %202, 1
  store i32 %203, ptr %186, align 4
  %204 = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 6
  %205 = getelementptr i8, ptr %204, i32 %202
  store i8 %184, ptr %205, align 1
  br label %456

206:                                              ; preds = %183
  %207 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %184, i8 noundef zeroext 0) #18
  br label %456

208:                                              ; preds = %130
  br i1 %131, label %462, label %209

209:                                              ; preds = %208
  %210 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.tty_buffer, ptr %211, i32 0, i32 1
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.tty_buffer, ptr %211, i32 0, i32 2
  %215 = load i32, ptr %214, align 4
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.tty_buffer, ptr %211, i32 0, i32 5
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.tty_buffer, ptr %211, i32 0, i32 6
  %224 = getelementptr i8, ptr %223, i32 %213
  %225 = getelementptr i8, ptr %224, i32 %215
  store i8 0, ptr %225, align 1
  %226 = load i32, ptr %212, align 4
  br label %227

227:                                              ; preds = %222, %217
  %228 = phi i32 [ %226, %222 ], [ %213, %217 ]
  %229 = add i32 %228, 1
  store i32 %229, ptr %212, align 4
  %230 = getelementptr inbounds %struct.tty_buffer, ptr %211, i32 0, i32 6
  %231 = getelementptr i8, ptr %230, i32 %228
  store i8 -14, ptr %231, align 1
  br label %456

232:                                              ; preds = %209
  %233 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext -14, i8 noundef zeroext 0) #18
  br label %456

234:                                              ; preds = %130
  br i1 %131, label %462, label %235

235:                                              ; preds = %234
  %236 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.tty_buffer, ptr %237, i32 0, i32 1
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr inbounds %struct.tty_buffer, ptr %237, i32 0, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = icmp slt i32 %239, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.tty_buffer, ptr %237, i32 0, i32 5
  %245 = load i32, ptr %244, align 4
  %246 = and i32 %245, 1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.tty_buffer, ptr %237, i32 0, i32 6
  %250 = getelementptr i8, ptr %249, i32 %239
  %251 = getelementptr i8, ptr %250, i32 %241
  store i8 0, ptr %251, align 1
  %252 = load i32, ptr %238, align 4
  br label %253

253:                                              ; preds = %248, %243
  %254 = phi i32 [ %252, %248 ], [ %239, %243 ]
  %255 = add i32 %254, 1
  store i32 %255, ptr %238, align 4
  %256 = getelementptr inbounds %struct.tty_buffer, ptr %237, i32 0, i32 6
  %257 = getelementptr i8, ptr %256, i32 %254
  store i8 -15, ptr %257, align 1
  br label %456

258:                                              ; preds = %235
  %259 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext -15, i8 noundef zeroext 0) #18
  br label %456

260:                                              ; preds = %130
  %261 = load volatile i32, ptr getelementptr inbounds ([24 x i32], ptr @key_down, i32 0, i32 1), align 4
  %262 = and i32 %261, 16777216
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = load volatile i32, ptr getelementptr inbounds ([24 x i32], ptr @key_down, i32 0, i32 3), align 4
  %266 = and i32 %265, 16
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %294, label %268

268:                                              ; preds = %264, %260
  %269 = or i8 %132, 84
  %270 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.tty_buffer, ptr %271, i32 0, i32 1
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.tty_buffer, ptr %271, i32 0, i32 2
  %275 = load i32, ptr %274, align 4
  %276 = icmp slt i32 %273, %275
  br i1 %276, label %277, label %292

277:                                              ; preds = %268
  %278 = getelementptr inbounds %struct.tty_buffer, ptr %271, i32 0, i32 5
  %279 = load i32, ptr %278, align 4
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.tty_buffer, ptr %271, i32 0, i32 6
  %284 = getelementptr i8, ptr %283, i32 %273
  %285 = getelementptr i8, ptr %284, i32 %275
  store i8 0, ptr %285, align 1
  %286 = load i32, ptr %272, align 4
  br label %287

287:                                              ; preds = %282, %277
  %288 = phi i32 [ %286, %282 ], [ %273, %277 ]
  %289 = add i32 %288, 1
  store i32 %289, ptr %272, align 4
  %290 = getelementptr inbounds %struct.tty_buffer, ptr %271, i32 0, i32 6
  %291 = getelementptr i8, ptr %290, i32 %288
  store i8 %269, ptr %291, align 1
  br label %456

292:                                              ; preds = %268
  %293 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %269, i8 noundef zeroext 0) #18
  br label %456

294:                                              ; preds = %264
  %295 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr inbounds %struct.tty_buffer, ptr %296, i32 0, i32 1
  %298 = load i32, ptr %297, align 4
  %299 = getelementptr inbounds %struct.tty_buffer, ptr %296, i32 0, i32 2
  %300 = load i32, ptr %299, align 4
  %301 = icmp slt i32 %298, %300
  br i1 %301, label %302, label %317

302:                                              ; preds = %294
  %303 = getelementptr inbounds %struct.tty_buffer, ptr %296, i32 0, i32 5
  %304 = load i32, ptr %303, align 4
  %305 = and i32 %304, 1
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.tty_buffer, ptr %296, i32 0, i32 6
  %309 = getelementptr i8, ptr %308, i32 %298
  %310 = getelementptr i8, ptr %309, i32 %300
  store i8 0, ptr %310, align 1
  %311 = load i32, ptr %297, align 4
  br label %312

312:                                              ; preds = %307, %302
  %313 = phi i32 [ %311, %307 ], [ %298, %302 ]
  %314 = add i32 %313, 1
  store i32 %314, ptr %297, align 4
  %315 = getelementptr inbounds %struct.tty_buffer, ptr %296, i32 0, i32 6
  %316 = getelementptr i8, ptr %315, i32 %313
  store i8 -32, ptr %316, align 1
  br label %319

317:                                              ; preds = %294
  %318 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext -32, i8 noundef zeroext 0) #18
  br label %319

319:                                              ; preds = %317, %312
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  %320 = or i8 %132, 42
  %321 = load ptr, ptr %295, align 4
  %322 = getelementptr inbounds %struct.tty_buffer, ptr %321, i32 0, i32 1
  %323 = load i32, ptr %322, align 4
  %324 = getelementptr inbounds %struct.tty_buffer, ptr %321, i32 0, i32 2
  %325 = load i32, ptr %324, align 4
  %326 = icmp slt i32 %323, %325
  br i1 %326, label %327, label %342

327:                                              ; preds = %319
  %328 = getelementptr inbounds %struct.tty_buffer, ptr %321, i32 0, i32 5
  %329 = load i32, ptr %328, align 4
  %330 = and i32 %329, 1
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.tty_buffer, ptr %321, i32 0, i32 6
  %334 = getelementptr i8, ptr %333, i32 %323
  %335 = getelementptr i8, ptr %334, i32 %325
  store i8 0, ptr %335, align 1
  %336 = load i32, ptr %322, align 4
  br label %337

337:                                              ; preds = %332, %327
  %338 = phi i32 [ %336, %332 ], [ %323, %327 ]
  %339 = add i32 %338, 1
  store i32 %339, ptr %322, align 4
  %340 = getelementptr inbounds %struct.tty_buffer, ptr %321, i32 0, i32 6
  %341 = getelementptr i8, ptr %340, i32 %338
  store i8 %320, ptr %341, align 1
  br label %344

342:                                              ; preds = %319
  %343 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %320, i8 noundef zeroext 0) #18
  br label %344

344:                                              ; preds = %342, %337
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  %345 = load ptr, ptr %295, align 4
  %346 = getelementptr inbounds %struct.tty_buffer, ptr %345, i32 0, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr inbounds %struct.tty_buffer, ptr %345, i32 0, i32 2
  %349 = load i32, ptr %348, align 4
  %350 = icmp slt i32 %347, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %344
  %352 = getelementptr inbounds %struct.tty_buffer, ptr %345, i32 0, i32 5
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 1
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.tty_buffer, ptr %345, i32 0, i32 6
  %358 = getelementptr i8, ptr %357, i32 %347
  %359 = getelementptr i8, ptr %358, i32 %349
  store i8 0, ptr %359, align 1
  %360 = load i32, ptr %346, align 4
  br label %361

361:                                              ; preds = %356, %351
  %362 = phi i32 [ %360, %356 ], [ %347, %351 ]
  %363 = add i32 %362, 1
  store i32 %363, ptr %346, align 4
  %364 = getelementptr inbounds %struct.tty_buffer, ptr %345, i32 0, i32 6
  %365 = getelementptr i8, ptr %364, i32 %362
  store i8 -32, ptr %365, align 1
  br label %368

366:                                              ; preds = %344
  %367 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext -32, i8 noundef zeroext 0) #18
  br label %368

368:                                              ; preds = %366, %361
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  %369 = or i8 %132, 55
  %370 = load ptr, ptr %295, align 4
  %371 = getelementptr inbounds %struct.tty_buffer, ptr %370, i32 0, i32 1
  %372 = load i32, ptr %371, align 4
  %373 = getelementptr inbounds %struct.tty_buffer, ptr %370, i32 0, i32 2
  %374 = load i32, ptr %373, align 4
  %375 = icmp slt i32 %372, %374
  br i1 %375, label %376, label %391

376:                                              ; preds = %368
  %377 = getelementptr inbounds %struct.tty_buffer, ptr %370, i32 0, i32 5
  %378 = load i32, ptr %377, align 4
  %379 = and i32 %378, 1
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.tty_buffer, ptr %370, i32 0, i32 6
  %383 = getelementptr i8, ptr %382, i32 %372
  %384 = getelementptr i8, ptr %383, i32 %374
  store i8 0, ptr %384, align 1
  %385 = load i32, ptr %371, align 4
  br label %386

386:                                              ; preds = %381, %376
  %387 = phi i32 [ %385, %381 ], [ %372, %376 ]
  %388 = add i32 %387, 1
  store i32 %388, ptr %371, align 4
  %389 = getelementptr inbounds %struct.tty_buffer, ptr %370, i32 0, i32 6
  %390 = getelementptr i8, ptr %389, i32 %387
  store i8 %369, ptr %390, align 1
  br label %456

391:                                              ; preds = %368
  %392 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %369, i8 noundef zeroext 0) #18
  br label %456

393:                                              ; preds = %130
  %394 = icmp ugt i32 %2, 255
  br i1 %394, label %462, label %395

395:                                              ; preds = %393
  %396 = getelementptr [256 x i16], ptr @x86_keycodes, i32 0, i32 %2
  %397 = load i16, ptr %396, align 2
  %398 = icmp eq i16 %397, 0
  br i1 %398, label %457, label %399

399:                                              ; preds = %395
  %400 = and i16 %397, 256
  %401 = icmp eq i16 %400, 0
  br i1 %401, label %428, label %402

402:                                              ; preds = %399
  %403 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %404 = load ptr, ptr %403, align 4
  %405 = getelementptr inbounds %struct.tty_buffer, ptr %404, i32 0, i32 1
  %406 = load i32, ptr %405, align 4
  %407 = getelementptr inbounds %struct.tty_buffer, ptr %404, i32 0, i32 2
  %408 = load i32, ptr %407, align 4
  %409 = icmp slt i32 %406, %408
  br i1 %409, label %410, label %425

410:                                              ; preds = %402
  %411 = getelementptr inbounds %struct.tty_buffer, ptr %404, i32 0, i32 5
  %412 = load i32, ptr %411, align 4
  %413 = and i32 %412, 1
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %410
  %416 = getelementptr inbounds %struct.tty_buffer, ptr %404, i32 0, i32 6
  %417 = getelementptr i8, ptr %416, i32 %406
  %418 = getelementptr i8, ptr %417, i32 %408
  store i8 0, ptr %418, align 1
  %419 = load i32, ptr %405, align 4
  br label %420

420:                                              ; preds = %415, %410
  %421 = phi i32 [ %419, %415 ], [ %406, %410 ]
  %422 = add i32 %421, 1
  store i32 %422, ptr %405, align 4
  %423 = getelementptr inbounds %struct.tty_buffer, ptr %404, i32 0, i32 6
  %424 = getelementptr i8, ptr %423, i32 %421
  store i8 -32, ptr %424, align 1
  br label %427

425:                                              ; preds = %402
  %426 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext -32, i8 noundef zeroext 0) #18
  br label %427

427:                                              ; preds = %425, %420
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  br label %428

428:                                              ; preds = %427, %399
  %429 = trunc i16 %397 to i8
  %430 = and i8 %429, 127
  %431 = or i8 %430, %132
  %432 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %433 = load ptr, ptr %432, align 4
  %434 = getelementptr inbounds %struct.tty_buffer, ptr %433, i32 0, i32 1
  %435 = load i32, ptr %434, align 4
  %436 = getelementptr inbounds %struct.tty_buffer, ptr %433, i32 0, i32 2
  %437 = load i32, ptr %436, align 4
  %438 = icmp slt i32 %435, %437
  br i1 %438, label %439, label %454

439:                                              ; preds = %428
  %440 = getelementptr inbounds %struct.tty_buffer, ptr %433, i32 0, i32 5
  %441 = load i32, ptr %440, align 4
  %442 = and i32 %441, 1
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %439
  %445 = getelementptr inbounds %struct.tty_buffer, ptr %433, i32 0, i32 6
  %446 = getelementptr i8, ptr %445, i32 %435
  %447 = getelementptr i8, ptr %446, i32 %437
  store i8 0, ptr %447, align 1
  %448 = load i32, ptr %434, align 4
  br label %449

449:                                              ; preds = %444, %439
  %450 = phi i32 [ %448, %444 ], [ %435, %439 ]
  %451 = add i32 %450, 1
  store i32 %451, ptr %434, align 4
  %452 = getelementptr inbounds %struct.tty_buffer, ptr %433, i32 0, i32 6
  %453 = getelementptr i8, ptr %452, i32 %450
  store i8 %431, ptr %453, align 1
  br label %456

454:                                              ; preds = %428
  %455 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %431, i8 noundef zeroext 0) #18
  br label %456

456:                                              ; preds = %454, %449, %391, %386, %292, %287, %258, %253, %232, %227, %206, %201
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  br label %462

457:                                              ; preds = %395
  %458 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.kbd_keycode) #18
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %462, label %460

460:                                              ; preds = %457
  %461 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %2) #19
  br label %462

462:                                              ; preds = %460, %457, %456, %393, %234, %208, %117
  %463 = load ptr, ptr @kbd, align 4
  %464 = getelementptr inbounds %struct.kbd_struct, ptr %463, i32 0, i32 3
  %465 = load i8, ptr %464, align 1
  %466 = and i8 %465, 112
  %467 = icmp eq i8 %466, 16
  br i1 %467, label %468, label %579

468:                                              ; preds = %462
  %469 = icmp ult i32 %2, 128
  %470 = icmp eq i32 %3, 0
  br i1 %469, label %471, label %499

471:                                              ; preds = %468
  %472 = select i1 %470, i32 128, i32 0
  %473 = or i32 %472, %2
  %474 = trunc i32 %473 to i8
  %475 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %476 = load ptr, ptr %475, align 4
  %477 = getelementptr inbounds %struct.tty_buffer, ptr %476, i32 0, i32 1
  %478 = load i32, ptr %477, align 4
  %479 = getelementptr inbounds %struct.tty_buffer, ptr %476, i32 0, i32 2
  %480 = load i32, ptr %479, align 4
  %481 = icmp slt i32 %478, %480
  br i1 %481, label %482, label %497

482:                                              ; preds = %471
  %483 = getelementptr inbounds %struct.tty_buffer, ptr %476, i32 0, i32 5
  %484 = load i32, ptr %483, align 4
  %485 = and i32 %484, 1
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %482
  %488 = getelementptr inbounds %struct.tty_buffer, ptr %476, i32 0, i32 6
  %489 = getelementptr i8, ptr %488, i32 %478
  %490 = getelementptr i8, ptr %489, i32 %480
  store i8 0, ptr %490, align 1
  %491 = load i32, ptr %477, align 4
  br label %492

492:                                              ; preds = %487, %482
  %493 = phi i32 [ %491, %487 ], [ %478, %482 ]
  %494 = add i32 %493, 1
  store i32 %494, ptr %477, align 4
  %495 = getelementptr inbounds %struct.tty_buffer, ptr %476, i32 0, i32 6
  %496 = getelementptr i8, ptr %495, i32 %493
  store i8 %474, ptr %496, align 1
  br label %578

497:                                              ; preds = %471
  %498 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %474, i8 noundef zeroext 0) #18
  br label %578

499:                                              ; preds = %468
  %500 = select i1 %470, i8 -128, i8 0
  %501 = getelementptr inbounds %struct.tty_bufhead, ptr %104, i32 0, i32 8
  %502 = load ptr, ptr %501, align 4
  %503 = getelementptr inbounds %struct.tty_buffer, ptr %502, i32 0, i32 1
  %504 = load i32, ptr %503, align 4
  %505 = getelementptr inbounds %struct.tty_buffer, ptr %502, i32 0, i32 2
  %506 = load i32, ptr %505, align 4
  %507 = icmp slt i32 %504, %506
  br i1 %507, label %508, label %523

508:                                              ; preds = %499
  %509 = getelementptr inbounds %struct.tty_buffer, ptr %502, i32 0, i32 5
  %510 = load i32, ptr %509, align 4
  %511 = and i32 %510, 1
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %518

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.tty_buffer, ptr %502, i32 0, i32 6
  %515 = getelementptr i8, ptr %514, i32 %504
  %516 = getelementptr i8, ptr %515, i32 %506
  store i8 0, ptr %516, align 1
  %517 = load i32, ptr %503, align 4
  br label %518

518:                                              ; preds = %513, %508
  %519 = phi i32 [ %517, %513 ], [ %504, %508 ]
  %520 = add i32 %519, 1
  store i32 %520, ptr %503, align 4
  %521 = getelementptr inbounds %struct.tty_buffer, ptr %502, i32 0, i32 6
  %522 = getelementptr i8, ptr %521, i32 %519
  store i8 %500, ptr %522, align 1
  br label %525

523:                                              ; preds = %499
  %524 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %500, i8 noundef zeroext 0) #18
  br label %525

525:                                              ; preds = %523, %518
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  %526 = lshr i32 %2, 7
  %527 = trunc i32 %526 to i8
  %528 = or i8 %527, -128
  %529 = load ptr, ptr %501, align 4
  %530 = getelementptr inbounds %struct.tty_buffer, ptr %529, i32 0, i32 1
  %531 = load i32, ptr %530, align 4
  %532 = getelementptr inbounds %struct.tty_buffer, ptr %529, i32 0, i32 2
  %533 = load i32, ptr %532, align 4
  %534 = icmp slt i32 %531, %533
  br i1 %534, label %535, label %550

535:                                              ; preds = %525
  %536 = getelementptr inbounds %struct.tty_buffer, ptr %529, i32 0, i32 5
  %537 = load i32, ptr %536, align 4
  %538 = and i32 %537, 1
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.tty_buffer, ptr %529, i32 0, i32 6
  %542 = getelementptr i8, ptr %541, i32 %531
  %543 = getelementptr i8, ptr %542, i32 %533
  store i8 0, ptr %543, align 1
  %544 = load i32, ptr %530, align 4
  br label %545

545:                                              ; preds = %540, %535
  %546 = phi i32 [ %544, %540 ], [ %531, %535 ]
  %547 = add i32 %546, 1
  store i32 %547, ptr %530, align 4
  %548 = getelementptr inbounds %struct.tty_buffer, ptr %529, i32 0, i32 6
  %549 = getelementptr i8, ptr %548, i32 %546
  store i8 %528, ptr %549, align 1
  br label %552

550:                                              ; preds = %525
  %551 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %528, i8 noundef zeroext 0) #18
  br label %552

552:                                              ; preds = %550, %545
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  %553 = trunc i32 %2 to i8
  %554 = or i8 %553, -128
  %555 = load ptr, ptr %501, align 4
  %556 = getelementptr inbounds %struct.tty_buffer, ptr %555, i32 0, i32 1
  %557 = load i32, ptr %556, align 4
  %558 = getelementptr inbounds %struct.tty_buffer, ptr %555, i32 0, i32 2
  %559 = load i32, ptr %558, align 4
  %560 = icmp slt i32 %557, %559
  br i1 %560, label %561, label %576

561:                                              ; preds = %552
  %562 = getelementptr inbounds %struct.tty_buffer, ptr %555, i32 0, i32 5
  %563 = load i32, ptr %562, align 4
  %564 = and i32 %563, 1
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %571

566:                                              ; preds = %561
  %567 = getelementptr inbounds %struct.tty_buffer, ptr %555, i32 0, i32 6
  %568 = getelementptr i8, ptr %567, i32 %557
  %569 = getelementptr i8, ptr %568, i32 %559
  store i8 0, ptr %569, align 1
  %570 = load i32, ptr %556, align 4
  br label %571

571:                                              ; preds = %566, %561
  %572 = phi i32 [ %570, %566 ], [ %557, %561 ]
  %573 = add i32 %572, 1
  store i32 %573, ptr %556, align 4
  %574 = getelementptr inbounds %struct.tty_buffer, ptr %555, i32 0, i32 6
  %575 = getelementptr i8, ptr %574, i32 %572
  store i8 %554, ptr %575, align 1
  br label %578

576:                                              ; preds = %552
  %577 = tail call i32 @__tty_insert_flip_char(ptr noundef %104, i8 noundef zeroext %554, i8 noundef zeroext 0) #18
  br label %578

578:                                              ; preds = %576, %571, %497, %492
  tail call void @tty_flip_buffer_push(ptr noundef %104) #18
  br label %579

579:                                              ; preds = %578, %462
  %580 = phi i1 [ %127, %462 ], [ true, %578 ]
  %581 = icmp ne i32 %3, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %579
  tail call void @_set_bit(i32 noundef %2, ptr noundef nonnull @key_down) #18
  br label %584

583:                                              ; preds = %579
  tail call void @_clear_bit(i32 noundef %2, ptr noundef nonnull @key_down) #18
  br label %584

584:                                              ; preds = %583, %582
  %585 = load i8, ptr @rep, align 1, !range !34
  %586 = icmp eq i8 %585, 0
  br i1 %586, label %602, label %587

587:                                              ; preds = %584
  %588 = load ptr, ptr @kbd, align 4
  %589 = getelementptr inbounds %struct.kbd_struct, ptr %588, i32 0, i32 4
  %590 = load i8, ptr %589, align 1
  %591 = and i8 %590, 4
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %732, label %593

593:                                              ; preds = %587
  br i1 %111, label %602, label %594

594:                                              ; preds = %593
  %595 = getelementptr inbounds %struct.tty_struct, ptr %110, i32 0, i32 13, i32 3
  %596 = load i32, ptr %595, align 4
  %597 = and i32 %596, 8
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %594
  %600 = tail call i32 @tty_chars_in_buffer(ptr noundef nonnull %110) #18
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %732

602:                                              ; preds = %599, %594, %593, %584
  %603 = load i32, ptr @shift_state, align 4
  %604 = load ptr, ptr @kbd, align 4
  %605 = getelementptr inbounds %struct.kbd_struct, ptr %604, i32 0, i32 1
  %606 = load i8, ptr %605, align 1
  %607 = zext i8 %606 to i32
  %608 = or i32 %603, %607
  %609 = load i8, ptr %604, align 1
  %610 = zext i8 %609 to i32
  %611 = xor i32 %608, %610
  store i32 %611, ptr %106, align 4
  %612 = getelementptr inbounds %struct.kbd_struct, ptr %604, i32 0, i32 2
  %613 = load i8, ptr %612, align 1
  %614 = lshr i8 %613, 1
  %615 = and i8 %614, 15
  %616 = zext i8 %615 to i32
  store i32 %616, ptr %107, align 4
  %617 = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %611
  %618 = load ptr, ptr %617, align 4
  %619 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 1, ptr noundef nonnull %5) #18
  %620 = icmp ne i32 %619, 32769
  %621 = icmp ne ptr %618, null
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %653, label %623

623:                                              ; preds = %602
  %624 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 2, ptr noundef nonnull %5) #18
  store i32 0, ptr @shift_state, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) @shift_down, i8 0, i32 9, i1 false) #18
  %625 = call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #18
  %626 = icmp ult i32 %625, 256
  br i1 %626, label %627, label %650

627:                                              ; preds = %646, %623
  %628 = phi i32 [ %648, %646 ], [ %625, %623 ]
  %629 = load ptr, ptr @key_maps, align 4
  %630 = getelementptr i16, ptr %629, i32 %628
  %631 = load i16, ptr %630, align 2
  %632 = lshr i16 %631, 8
  %633 = trunc i16 %632 to i8
  %634 = xor i8 %633, -16
  switch i8 %634, label %646 [
    i8 12, label %635
    i8 7, label %635
  ]

635:                                              ; preds = %627, %627
  %636 = and i16 %631, 255
  %637 = icmp eq i16 %636, 8
  %638 = select i1 %637, i16 0, i16 %636
  %639 = zext i16 %638 to i32
  %640 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %639
  %641 = load i8, ptr %640, align 1
  %642 = add i8 %641, 1
  store i8 %642, ptr %640, align 1
  %643 = shl nuw i32 1, %639
  %644 = load i32, ptr @shift_state, align 4
  %645 = or i32 %644, %643
  store i32 %645, ptr @shift_state, align 4
  br label %646

646:                                              ; preds = %635, %627
  %647 = add nuw nsw i32 %628, 1
  %648 = call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %647) #18
  %649 = icmp ult i32 %648, 256
  br i1 %649, label %627, label %650

650:                                              ; preds = %646, %623
  %651 = load ptr, ptr @kbd, align 4
  %652 = getelementptr inbounds %struct.kbd_struct, ptr %651, i32 0, i32 1
  store i8 0, ptr %652, align 1
  br label %732

653:                                              ; preds = %602
  %654 = icmp ult i32 %2, 256
  br i1 %654, label %655, label %658

655:                                              ; preds = %653
  %656 = getelementptr i16, ptr %618, i32 %2
  %657 = load i16, ptr %656, align 2
  br label %666

658:                                              ; preds = %653
  %659 = add nsw i32 %2, -497
  %660 = icmp ult i32 %659, 8
  br i1 %660, label %661, label %732

661:                                              ; preds = %658
  %662 = trunc i32 %2 to i16
  %663 = add nsw i16 %662, -496
  %664 = and i16 %663, -3585
  %665 = xor i16 %664, -512
  br label %666

666:                                              ; preds = %661, %655
  %667 = phi i16 [ %657, %655 ], [ %665, %661 ]
  %668 = zext i16 %667 to i32
  %669 = icmp ult i16 %667, -4096
  br i1 %669, label %670, label %677

670:                                              ; preds = %666
  store i32 %668, ptr %108, align 4
  %671 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 3, ptr noundef nonnull %5) #18
  %672 = icmp ne i32 %671, 32769
  %673 = and i1 %581, %672
  %674 = xor i1 %673, true
  %675 = select i1 %674, i1 true, i1 %580
  br i1 %675, label %732, label %676

676:                                              ; preds = %670
  call fastcc void @k_unicode(ptr noundef %104, i32 noundef %668, i8 noundef zeroext 0) #18
  br label %732

677:                                              ; preds = %666
  %678 = lshr i16 %667, 8
  %679 = trunc i16 %678 to i8
  %680 = add nsw i8 %679, 16
  %681 = icmp eq i8 %680, 11
  %682 = trunc i16 %667 to i8
  br i1 %681, label %683, label %699

683:                                              ; preds = %677
  %684 = load ptr, ptr @kbd, align 4
  %685 = getelementptr inbounds %struct.kbd_struct, ptr %684, i32 0, i32 2
  %686 = load i8, ptr %685, align 1
  %687 = and i8 %686, 8
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %699, label %689

689:                                              ; preds = %683
  %690 = xor i32 %611, 1
  %691 = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %690
  %692 = load ptr, ptr %691, align 4
  %693 = icmp eq ptr %692, null
  br i1 %693, label %699, label %694

694:                                              ; preds = %689
  %695 = getelementptr i16, ptr %692, i32 %2
  %696 = load i16, ptr %695, align 2
  %697 = zext i16 %696 to i32
  %698 = trunc i16 %696 to i8
  br label %699

699:                                              ; preds = %694, %689, %683, %677
  %700 = phi i32 [ %668, %683 ], [ %697, %694 ], [ %668, %689 ], [ %668, %677 ]
  %701 = phi i8 [ %682, %683 ], [ %698, %694 ], [ %682, %689 ], [ %682, %677 ]
  %702 = phi i8 [ 0, %683 ], [ 0, %694 ], [ 0, %689 ], [ %680, %677 ]
  store i32 %700, ptr %108, align 4
  %703 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 4, ptr noundef nonnull %5) #18
  %704 = icmp eq i32 %703, 32769
  br i1 %704, label %732, label %705

705:                                              ; preds = %699
  br i1 %580, label %714, label %706

706:                                              ; preds = %705
  %707 = load ptr, ptr @kbd, align 4
  %708 = getelementptr inbounds %struct.kbd_struct, ptr %707, i32 0, i32 3
  %709 = load i8, ptr %708, align 1
  %710 = freeze i8 %709
  %711 = and i8 %710, 112
  %712 = icmp eq i8 %711, 64
  br i1 %712, label %713, label %715

713:                                              ; preds = %706
  switch i8 %702, label %732 [
    i8 7, label %715
    i8 2, label %715
  ]

714:                                              ; preds = %705
  switch i8 %702, label %732 [
    i8 2, label %715
    i8 7, label %715
  ]

715:                                              ; preds = %714, %714, %713, %713, %706
  %716 = zext i8 %702 to i32
  %717 = getelementptr [16 x ptr], ptr @k_handler, i32 0, i32 %716
  %718 = load ptr, ptr %717, align 4
  %719 = xor i1 %581, true
  %720 = zext i1 %719 to i8
  call void %718(ptr noundef %104, i8 noundef zeroext %701, i8 noundef zeroext %720) #18
  %721 = load ptr, ptr @kbd, align 4
  %722 = getelementptr inbounds %struct.kbd_struct, ptr %721, i32 0, i32 2
  %723 = load i8, ptr %722, align 1
  %724 = lshr i8 %723, 1
  %725 = and i8 %724, 15
  %726 = zext i8 %725 to i32
  store i32 %726, ptr %107, align 4
  %727 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 5, ptr noundef nonnull %5) #18
  %728 = icmp eq i8 %702, 12
  br i1 %728, label %732, label %729

729:                                              ; preds = %715
  %730 = load ptr, ptr @kbd, align 4
  %731 = getelementptr inbounds %struct.kbd_struct, ptr %730, i32 0, i32 1
  store i8 0, ptr %731, align 1
  br label %732

732:                                              ; preds = %729, %715, %714, %713, %699, %676, %670, %658, %650, %599, %587
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #18
  br label %733

733:                                              ; preds = %732, %72, %71, %33, %29, %25, %21, %16, %9
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %734 = load i16, ptr @kbd_event_lock, align 4
  %735 = add i16 %734, 1
  store i16 %735, ptr @kbd_event_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !31
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  %736 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #18
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %739

738:                                              ; preds = %733
  call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %739

739:                                              ; preds = %738, %733
  store i32 1, ptr @do_poke_blanked_console, align 4
  call void @schedule_console_callback() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @kbd_match(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 262144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  %13 = tail call i32 @_find_next_bit_le(ptr noundef %12, i32 noundef 256, i32 noundef 0) #18
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @_find_next_bit_le(ptr noundef %12, i32 noundef 507, i32 noundef 497) #18
  %17 = icmp slt i32 %16, 507
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %7
  br label %19

19:                                               ; preds = %18, %15, %11, %2
  %20 = phi i1 [ false, %18 ], [ true, %2 ], [ true, %11 ], [ true, %15 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kbd_connect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 3
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 4
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 2
  store ptr @.str.1, ptr %10, align 8
  %11 = tail call i32 @input_register_handle(ptr noundef nonnull %5) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call i32 @input_open_device(ptr noundef nonnull %5) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  tail call void @input_unregister_handle(ptr noundef nonnull %5) #18
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi i32 [ %11, %7 ], [ %14, %16 ]
  tail call void @kfree(ptr noundef nonnull %5) #18
  br label %19

19:                                               ; preds = %17, %13, %3
  %20 = phi i32 [ %18, %17 ], [ -12, %3 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kbd_disconnect(ptr noundef %0) #0 {
  tail call void @input_close_device(ptr noundef %0) #18
  tail call void @input_unregister_handle(ptr noundef %0) #18
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kbd_start(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !36
  tail call void @tasklet_unlock_wait(ptr noundef nonnull @keyboard_tasklet) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !37
  %3 = load i32, ptr @ledstate, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 131072
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %22, %5
  %13 = phi i32 [ %23, %22 ], [ 0, %5 ]
  %14 = getelementptr [12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr [12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 %13
  %19 = and i32 %15, %3
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 255
  tail call void @led_trigger_event(ptr noundef %18, i32 noundef %21) #18
  br label %22

22:                                               ; preds = %17, %12
  %23 = add nuw nsw i32 %13, 1
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %12

25:                                               ; preds = %22, %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_console_callback() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @k_unicode(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %3
  %6 = load i32, ptr @diacr, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @handle_diacr(ptr noundef %0, i32 noundef %1)
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %9, %8 ], [ %1, %5 ]
  %12 = load i1, ptr @dead_key_next, align 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i1 false, ptr @dead_key_next, align 1
  store i32 %11, ptr @diacr, align 4
  br label %51

14:                                               ; preds = %10
  %15 = load ptr, ptr @kbd, align 4
  %16 = getelementptr inbounds %struct.kbd_struct, ptr %15, i32 0, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 112
  %19 = icmp eq i8 %18, 48
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call fastcc void @to_utf8(ptr noundef %0, i32 noundef %11)
  br label %51

21:                                               ; preds = %14
  %22 = tail call i32 @conv_uni_to_8bit(i32 noundef %11) #18
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %51, label %24

24:                                               ; preds = %21
  %25 = trunc i32 %22 to i8
  %26 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 6
  %40 = getelementptr i8, ptr %39, i32 %29
  %41 = getelementptr i8, ptr %40, i32 %31
  store i8 0, ptr %41, align 1
  %42 = load i32, ptr %28, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i32 [ %42, %38 ], [ %29, %33 ]
  %45 = add i32 %44, 1
  store i32 %45, ptr %28, align 4
  %46 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 6
  %47 = getelementptr i8, ptr %46, i32 %44
  store i8 %25, ptr %47, align 1
  br label %50

48:                                               ; preds = %24
  %49 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %25, i8 noundef zeroext 0) #18
  br label %50

50:                                               ; preds = %48, %43
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %51

51:                                               ; preds = %50, %21, %20, %13, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_diacr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @diacr, align 4
  store i32 0, ptr @diacr, align 4
  %4 = and i32 %3, -256
  %5 = icmp eq i32 %4, 10240
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @accent_table_size, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %14

9:                                                ; preds = %2
  %10 = and i32 %1, -256
  %11 = icmp eq i32 %10, 10240
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = or i32 %3, %1
  br label %69

14:                                               ; preds = %26, %6
  %15 = phi i32 [ %27, %26 ], [ 0, %6 ]
  %16 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %15, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %15, i32 2
  %25 = load i32, ptr %24, align 4
  br label %69

26:                                               ; preds = %19, %14
  %27 = add nuw i32 %15, 1
  %28 = icmp eq i32 %27, %7
  br i1 %28, label %29, label %14

29:                                               ; preds = %26, %9, %6
  switch i32 %1, label %30 [
    i32 10240, label %69
    i32 32, label %69
  ]

30:                                               ; preds = %29
  %31 = icmp eq i32 %3, %1
  br i1 %31, label %69, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr @kbd, align 4
  %34 = getelementptr inbounds %struct.kbd_struct, ptr %33, i32 0, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 112
  %37 = icmp eq i8 %36, 48
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call fastcc void @to_utf8(ptr noundef %0, i32 noundef %3)
  br label %69

39:                                               ; preds = %32
  %40 = tail call i32 @conv_uni_to_8bit(i32 noundef %3) #18
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %69, label %42

42:                                               ; preds = %39
  %43 = trunc i32 %40 to i8
  %44 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 6
  %58 = getelementptr i8, ptr %57, i32 %47
  %59 = getelementptr i8, ptr %58, i32 %49
  store i8 0, ptr %59, align 1
  %60 = load i32, ptr %46, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i32 [ %60, %56 ], [ %47, %51 ]
  %63 = add i32 %62, 1
  store i32 %63, ptr %46, align 4
  %64 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 6
  %65 = getelementptr i8, ptr %64, i32 %62
  store i8 %43, ptr %65, align 1
  br label %68

66:                                               ; preds = %42
  %67 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %43, i8 noundef zeroext 0) #18
  br label %68

68:                                               ; preds = %66, %61
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %69

69:                                               ; preds = %68, %39, %38, %30, %29, %29, %23, %12
  %70 = phi i32 [ %13, %12 ], [ %25, %23 ], [ %3, %29 ], [ %3, %29 ], [ %1, %30 ], [ %1, %39 ], [ %1, %68 ], [ %1, %38 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @to_utf8(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ult i32 %1, 128
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tty_buffer, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tty_buffer, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tty_buffer, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tty_buffer, ptr %7, i32 0, i32 6
  %20 = getelementptr i8, ptr %19, i32 %9
  %21 = getelementptr i8, ptr %20, i32 %11
  store i8 0, ptr %21, align 1
  %22 = load i32, ptr %8, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i32 [ %22, %18 ], [ %9, %13 ]
  %25 = add i32 %24, 1
  store i32 %25, ptr %8, align 4
  %26 = getelementptr inbounds %struct.tty_buffer, ptr %7, i32 0, i32 6
  %27 = getelementptr i8, ptr %26, i32 %24
  store i8 %5, ptr %27, align 1
  br label %290

28:                                               ; preds = %4
  %29 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %5, i8 noundef zeroext 0) #18
  br label %290

30:                                               ; preds = %2
  %31 = icmp ult i32 %1, 2048
  br i1 %31, label %32, label %87

32:                                               ; preds = %30
  %33 = lshr i32 %1, 6
  %34 = trunc i32 %33 to i8
  %35 = or i8 %34, -64
  %36 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 6
  %50 = getelementptr i8, ptr %49, i32 %39
  %51 = getelementptr i8, ptr %50, i32 %41
  store i8 0, ptr %51, align 1
  %52 = load i32, ptr %38, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %52, %48 ], [ %39, %43 ]
  %55 = add i32 %54, 1
  store i32 %55, ptr %38, align 4
  %56 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 6
  %57 = getelementptr i8, ptr %56, i32 %54
  store i8 %35, ptr %57, align 1
  br label %60

58:                                               ; preds = %32
  %59 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %35, i8 noundef zeroext 0) #18
  br label %60

60:                                               ; preds = %58, %53
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %61 = trunc i32 %1 to i8
  %62 = and i8 %61, 63
  %63 = or i8 %62, -128
  %64 = load ptr, ptr %36, align 4
  %65 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 6
  %77 = getelementptr i8, ptr %76, i32 %66
  %78 = getelementptr i8, ptr %77, i32 %68
  store i8 0, ptr %78, align 1
  %79 = load i32, ptr %65, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i32 [ %79, %75 ], [ %66, %70 ]
  %82 = add i32 %81, 1
  store i32 %82, ptr %65, align 4
  %83 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 6
  %84 = getelementptr i8, ptr %83, i32 %81
  store i8 %63, ptr %84, align 1
  br label %290

85:                                               ; preds = %60
  %86 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %63, i8 noundef zeroext 0) #18
  br label %290

87:                                               ; preds = %30
  %88 = icmp ult i32 %1, 65536
  br i1 %88, label %89, label %177

89:                                               ; preds = %87
  %90 = and i32 %1, -2048
  %91 = icmp eq i32 %90, 55296
  %92 = icmp eq i32 %1, 65535
  %93 = or i1 %92, %91
  br i1 %93, label %291, label %94

94:                                               ; preds = %89
  %95 = lshr i32 %1, 12
  %96 = trunc i32 %95 to i8
  %97 = or i8 %96, -32
  %98 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.tty_buffer, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.tty_buffer, ptr %99, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.tty_buffer, ptr %99, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.tty_buffer, ptr %99, i32 0, i32 6
  %112 = getelementptr i8, ptr %111, i32 %101
  %113 = getelementptr i8, ptr %112, i32 %103
  store i8 0, ptr %113, align 1
  %114 = load i32, ptr %100, align 4
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i32 [ %114, %110 ], [ %101, %105 ]
  %117 = add i32 %116, 1
  store i32 %117, ptr %100, align 4
  %118 = getelementptr inbounds %struct.tty_buffer, ptr %99, i32 0, i32 6
  %119 = getelementptr i8, ptr %118, i32 %116
  store i8 %97, ptr %119, align 1
  br label %122

120:                                              ; preds = %94
  %121 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %97, i8 noundef zeroext 0) #18
  br label %122

122:                                              ; preds = %120, %115
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %123 = lshr i32 %1, 6
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 63
  %126 = or i8 %125, -128
  %127 = load ptr, ptr %98, align 4
  %128 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 5
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 6
  %140 = getelementptr i8, ptr %139, i32 %129
  %141 = getelementptr i8, ptr %140, i32 %131
  store i8 0, ptr %141, align 1
  %142 = load i32, ptr %128, align 4
  br label %143

143:                                              ; preds = %138, %133
  %144 = phi i32 [ %142, %138 ], [ %129, %133 ]
  %145 = add i32 %144, 1
  store i32 %145, ptr %128, align 4
  %146 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 6
  %147 = getelementptr i8, ptr %146, i32 %144
  store i8 %126, ptr %147, align 1
  br label %150

148:                                              ; preds = %122
  %149 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %126, i8 noundef zeroext 0) #18
  br label %150

150:                                              ; preds = %148, %143
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %151 = trunc i32 %1 to i8
  %152 = and i8 %151, 63
  %153 = or i8 %152, -128
  %154 = load ptr, ptr %98, align 4
  %155 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 6
  %167 = getelementptr i8, ptr %166, i32 %156
  %168 = getelementptr i8, ptr %167, i32 %158
  store i8 0, ptr %168, align 1
  %169 = load i32, ptr %155, align 4
  br label %170

170:                                              ; preds = %165, %160
  %171 = phi i32 [ %169, %165 ], [ %156, %160 ]
  %172 = add i32 %171, 1
  store i32 %172, ptr %155, align 4
  %173 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 6
  %174 = getelementptr i8, ptr %173, i32 %171
  store i8 %153, ptr %174, align 1
  br label %290

175:                                              ; preds = %150
  %176 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %153, i8 noundef zeroext 0) #18
  br label %290

177:                                              ; preds = %87
  %178 = icmp ult i32 %1, 1114112
  br i1 %178, label %179, label %291

179:                                              ; preds = %177
  %180 = lshr i32 %1, 18
  %181 = trunc i32 %180 to i8
  %182 = or i8 %181, -16
  %183 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.tty_buffer, ptr %184, i32 0, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.tty_buffer, ptr %184, i32 0, i32 2
  %188 = load i32, ptr %187, align 4
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %179
  %191 = getelementptr inbounds %struct.tty_buffer, ptr %184, i32 0, i32 5
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.tty_buffer, ptr %184, i32 0, i32 6
  %197 = getelementptr i8, ptr %196, i32 %186
  %198 = getelementptr i8, ptr %197, i32 %188
  store i8 0, ptr %198, align 1
  %199 = load i32, ptr %185, align 4
  br label %200

200:                                              ; preds = %195, %190
  %201 = phi i32 [ %199, %195 ], [ %186, %190 ]
  %202 = add i32 %201, 1
  store i32 %202, ptr %185, align 4
  %203 = getelementptr inbounds %struct.tty_buffer, ptr %184, i32 0, i32 6
  %204 = getelementptr i8, ptr %203, i32 %201
  store i8 %182, ptr %204, align 1
  br label %207

205:                                              ; preds = %179
  %206 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %182, i8 noundef zeroext 0) #18
  br label %207

207:                                              ; preds = %205, %200
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %208 = lshr i32 %1, 12
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 63
  %211 = or i8 %210, -128
  %212 = load ptr, ptr %183, align 4
  %213 = getelementptr inbounds %struct.tty_buffer, ptr %212, i32 0, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds %struct.tty_buffer, ptr %212, i32 0, i32 2
  %216 = load i32, ptr %215, align 4
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %207
  %219 = getelementptr inbounds %struct.tty_buffer, ptr %212, i32 0, i32 5
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, 1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.tty_buffer, ptr %212, i32 0, i32 6
  %225 = getelementptr i8, ptr %224, i32 %214
  %226 = getelementptr i8, ptr %225, i32 %216
  store i8 0, ptr %226, align 1
  %227 = load i32, ptr %213, align 4
  br label %228

228:                                              ; preds = %223, %218
  %229 = phi i32 [ %227, %223 ], [ %214, %218 ]
  %230 = add i32 %229, 1
  store i32 %230, ptr %213, align 4
  %231 = getelementptr inbounds %struct.tty_buffer, ptr %212, i32 0, i32 6
  %232 = getelementptr i8, ptr %231, i32 %229
  store i8 %211, ptr %232, align 1
  br label %235

233:                                              ; preds = %207
  %234 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %211, i8 noundef zeroext 0) #18
  br label %235

235:                                              ; preds = %233, %228
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %236 = lshr i32 %1, 6
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 63
  %239 = or i8 %238, -128
  %240 = load ptr, ptr %183, align 4
  %241 = getelementptr inbounds %struct.tty_buffer, ptr %240, i32 0, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr inbounds %struct.tty_buffer, ptr %240, i32 0, i32 2
  %244 = load i32, ptr %243, align 4
  %245 = icmp slt i32 %242, %244
  br i1 %245, label %246, label %261

246:                                              ; preds = %235
  %247 = getelementptr inbounds %struct.tty_buffer, ptr %240, i32 0, i32 5
  %248 = load i32, ptr %247, align 4
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.tty_buffer, ptr %240, i32 0, i32 6
  %253 = getelementptr i8, ptr %252, i32 %242
  %254 = getelementptr i8, ptr %253, i32 %244
  store i8 0, ptr %254, align 1
  %255 = load i32, ptr %241, align 4
  br label %256

256:                                              ; preds = %251, %246
  %257 = phi i32 [ %255, %251 ], [ %242, %246 ]
  %258 = add i32 %257, 1
  store i32 %258, ptr %241, align 4
  %259 = getelementptr inbounds %struct.tty_buffer, ptr %240, i32 0, i32 6
  %260 = getelementptr i8, ptr %259, i32 %257
  store i8 %239, ptr %260, align 1
  br label %263

261:                                              ; preds = %235
  %262 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %239, i8 noundef zeroext 0) #18
  br label %263

263:                                              ; preds = %261, %256
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %264 = trunc i32 %1 to i8
  %265 = and i8 %264, 63
  %266 = or i8 %265, -128
  %267 = load ptr, ptr %183, align 4
  %268 = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 2
  %271 = load i32, ptr %270, align 4
  %272 = icmp slt i32 %269, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %263
  %274 = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 5
  %275 = load i32, ptr %274, align 4
  %276 = and i32 %275, 1
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 6
  %280 = getelementptr i8, ptr %279, i32 %269
  %281 = getelementptr i8, ptr %280, i32 %271
  store i8 0, ptr %281, align 1
  %282 = load i32, ptr %268, align 4
  br label %283

283:                                              ; preds = %278, %273
  %284 = phi i32 [ %282, %278 ], [ %269, %273 ]
  %285 = add i32 %284, 1
  store i32 %285, ptr %268, align 4
  %286 = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 6
  %287 = getelementptr i8, ptr %286, i32 %284
  store i8 %266, ptr %287, align 1
  br label %290

288:                                              ; preds = %263
  %289 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %266, i8 noundef zeroext 0) #18
  br label %290

290:                                              ; preds = %288, %283, %175, %170, %85, %80, %28, %23
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %291

291:                                              ; preds = %290, %177, %89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_self(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = tail call i32 @conv_8bit_to_uni(i8 noundef zeroext %1) #18
  tail call fastcc void @k_unicode(ptr noundef %0, i32 noundef %4, i8 noundef zeroext %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_fn(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = zext i8 %1 to i32
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @func_buf_lock) #18
  %8 = getelementptr [256 x ptr], ptr @func_table, i32 0, i32 %6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @strlen(ptr noundef nonnull %9) #18
  %13 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext 0, i32 noundef %12) #18
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %14

14:                                               ; preds = %11, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @func_buf_lock, i32 noundef %7) #18
  br label %15

15:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_spec(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne i8 %2, 0
  %5 = zext i8 %1 to i32
  %6 = icmp ugt i8 %1, 19
  %7 = or i1 %6, %4
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @kbd, align 4
  %10 = getelementptr inbounds %struct.kbd_struct, ptr %9, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 7
  %14 = add nsw i8 %13, -1
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = icmp eq i8 %13, 4
  %18 = icmp ne i8 %1, 15
  %19 = and i1 %18, %17
  br i1 %19, label %25, label %22

20:                                               ; preds = %8
  %21 = icmp eq i8 %1, 15
  br i1 %21, label %22, label %25

22:                                               ; preds = %20, %16
  %23 = getelementptr [20 x ptr], ptr @fn_handler, i32 0, i32 %5
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %0) #18
  br label %25

25:                                               ; preds = %22, %20, %16, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_pad(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %98

5:                                                ; preds = %3
  %6 = load ptr, ptr @kbd, align 4
  %7 = getelementptr inbounds %struct.kbd_struct, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  %11 = load i8, ptr @shift_down, align 1
  %12 = icmp ne i8 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = zext i8 %1 to i32
  %16 = getelementptr [22 x i8], ptr @k_pad.app_map, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  store i8 79, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 1), align 1
  store i8 %17, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 2), align 1
  %18 = tail call i32 @strlen(ptr noundef nonnull @applkey.buf) #18
  %19 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %0, ptr noundef nonnull @applkey.buf, i8 noundef zeroext 0, i32 noundef %18) #18
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %98

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.kbd_struct, ptr %6, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  switch i8 %1, label %37 [
    i8 15, label %26
    i8 16, label %26
    i8 0, label %27
    i8 1, label %28
    i8 2, label %29
    i8 3, label %30
    i8 4, label %31
    i8 6, label %32
    i8 7, label %33
    i8 8, label %34
    i8 9, label %35
    i8 5, label %36
  ]

26:                                               ; preds = %25, %25
  tail call void @k_fn(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 0)
  br label %98

27:                                               ; preds = %25
  tail call void @k_fn(ptr noundef %0, i8 noundef zeroext 21, i8 noundef zeroext 0)
  br label %98

28:                                               ; preds = %25
  tail call void @k_fn(ptr noundef %0, i8 noundef zeroext 23, i8 noundef zeroext 0)
  br label %98

29:                                               ; preds = %25
  tail call void @k_cur(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %98

30:                                               ; preds = %25
  tail call void @k_fn(ptr noundef %0, i8 noundef zeroext 25, i8 noundef zeroext 0)
  br label %98

31:                                               ; preds = %25
  tail call void @k_cur(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %98

32:                                               ; preds = %25
  tail call void @k_cur(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 0)
  br label %98

33:                                               ; preds = %25
  tail call void @k_fn(ptr noundef %0, i8 noundef zeroext 20, i8 noundef zeroext 0)
  br label %98

34:                                               ; preds = %25
  tail call void @k_cur(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 0)
  br label %98

35:                                               ; preds = %25
  tail call void @k_fn(ptr noundef %0, i8 noundef zeroext 24, i8 noundef zeroext 0)
  br label %98

36:                                               ; preds = %25
  tail call fastcc void @applkey(ptr noundef %0, i32 noundef 71, i8 noundef zeroext %9)
  br label %98

37:                                               ; preds = %25, %20
  %38 = zext i8 %1 to i32
  %39 = getelementptr [22 x i8], ptr @k_pad.pad_chars, i32 0, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tty_buffer, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tty_buffer, ptr %42, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.tty_buffer, ptr %42, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.tty_buffer, ptr %42, i32 0, i32 6
  %55 = getelementptr i8, ptr %54, i32 %44
  %56 = getelementptr i8, ptr %55, i32 %46
  store i8 0, ptr %56, align 1
  %57 = load i32, ptr %43, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i32 [ %57, %53 ], [ %44, %48 ]
  %60 = add i32 %59, 1
  store i32 %60, ptr %43, align 4
  %61 = getelementptr inbounds %struct.tty_buffer, ptr %42, i32 0, i32 6
  %62 = getelementptr i8, ptr %61, i32 %59
  store i8 %40, ptr %62, align 1
  br label %65

63:                                               ; preds = %37
  %64 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %40, i8 noundef zeroext 0) #18
  br label %65

65:                                               ; preds = %63, %58
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %66 = icmp eq i8 %1, 14
  br i1 %66, label %67, label %98

67:                                               ; preds = %65
  %68 = load ptr, ptr @kbd, align 4
  %69 = getelementptr inbounds %struct.kbd_struct, ptr %68, i32 0, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %41, align 4
  %75 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 6
  %87 = getelementptr i8, ptr %86, i32 %76
  %88 = getelementptr i8, ptr %87, i32 %78
  store i8 0, ptr %88, align 1
  %89 = load i32, ptr %75, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ %89, %85 ], [ %76, %80 ]
  %92 = add i32 %91, 1
  store i32 %92, ptr %75, align 4
  %93 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 6
  %94 = getelementptr i8, ptr %93, i32 %91
  store i8 10, ptr %94, align 1
  br label %97

95:                                               ; preds = %73
  %96 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 0) #18
  br label %97

97:                                               ; preds = %95, %90
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %98

98:                                               ; preds = %97, %67, %65, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_dead(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = zext i8 %1 to i32
  %5 = getelementptr [27 x i8], ptr @k_dead.ret_diacr, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load i32, ptr @diacr, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @handle_diacr(ptr noundef %0, i32 noundef %7) #18
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ %7, %9 ]
  store i32 %15, ptr @diacr, align 4
  br label %16

16:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_cons(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext i8 %1 to i32
  %7 = tail call i32 @set_console(i32 noundef %6) #18
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_cur(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = zext i8 %1 to i32
  %7 = getelementptr [5 x i8], ptr @k_cur.cur_chars, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = load ptr, ptr @kbd, align 4
  %10 = getelementptr inbounds %struct.kbd_struct, ptr %9, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i8 91, i8 79
  store i8 %14, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 1), align 1
  store i8 %8, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 2), align 1
  %15 = tail call i32 @strlen(ptr noundef nonnull @applkey.buf) #18
  %16 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %0, ptr noundef nonnull @applkey.buf, i8 noundef zeroext 0, i32 noundef %15) #18
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %17

17:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_shift(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = load i32, ptr @shift_state, align 4
  %5 = load i8, ptr @rep, align 1, !range !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %88

7:                                                ; preds = %3
  %8 = icmp eq i8 %1, 8
  %9 = icmp eq i8 %2, 0
  br i1 %8, label %10, label %16

10:                                               ; preds = %7
  br i1 %9, label %11, label %17

11:                                               ; preds = %10
  %12 = load ptr, ptr @kbd, align 4
  %13 = getelementptr inbounds %struct.kbd_struct, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, -9
  store i8 %15, ptr %13, align 1
  br label %25

16:                                               ; preds = %7
  br i1 %9, label %25, label %17

17:                                               ; preds = %16, %10
  %18 = phi i8 [ %1, %16 ], [ 0, %10 ]
  %19 = zext i8 %18 to i32
  %20 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = add i8 %21, -1
  store i8 %24, ptr %20, align 1
  br label %31

25:                                               ; preds = %16, %11
  %26 = phi i8 [ 0, %11 ], [ %1, %16 ]
  %27 = zext i8 %26 to i32
  %28 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = add i8 %29, 1
  store i8 %30, ptr %28, align 1
  br label %31

31:                                               ; preds = %25, %23
  %32 = phi i8 [ %24, %23 ], [ %30, %25 ]
  %33 = phi i32 [ %19, %23 ], [ %27, %25 ]
  %34 = phi i1 [ false, %23 ], [ true, %25 ]
  %35 = icmp eq i8 %32, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = shl nuw i32 1, %33
  %38 = or i32 %37, %4
  br label %45

39:                                               ; preds = %31, %17
  %40 = phi i1 [ %34, %31 ], [ false, %17 ]
  %41 = phi i32 [ %33, %31 ], [ %19, %17 ]
  %42 = shl nuw i32 1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %4, %43
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ %40, %39 ], [ %34, %36 ]
  %47 = phi i32 [ %44, %39 ], [ %38, %36 ]
  store i32 %47, ptr @shift_state, align 4
  %48 = icmp eq i32 %47, %4
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %88, label %50

50:                                               ; preds = %45
  %51 = load i1, ptr @npadch_active, align 1
  br i1 %51, label %52, label %88

52:                                               ; preds = %50
  %53 = load ptr, ptr @kbd, align 4
  %54 = getelementptr inbounds %struct.kbd_struct, ptr %53, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 112
  %57 = icmp eq i8 %56, 48
  %58 = load i32, ptr @npadch_value, align 4
  br i1 %57, label %59, label %60

59:                                               ; preds = %52
  tail call fastcc void @to_utf8(ptr noundef %0, i32 noundef %58)
  br label %87

60:                                               ; preds = %52
  %61 = trunc i32 %58 to i8
  %62 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 6
  %76 = getelementptr i8, ptr %75, i32 %65
  %77 = getelementptr i8, ptr %76, i32 %67
  store i8 0, ptr %77, align 1
  %78 = load i32, ptr %64, align 4
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i32 [ %78, %74 ], [ %65, %69 ]
  %81 = add i32 %80, 1
  store i32 %81, ptr %64, align 4
  %82 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 6
  %83 = getelementptr i8, ptr %82, i32 %80
  store i8 %61, ptr %83, align 1
  br label %86

84:                                               ; preds = %60
  %85 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %61, i8 noundef zeroext 0) #18
  br label %86

86:                                               ; preds = %84, %79
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %87

87:                                               ; preds = %86, %59
  store i1 false, ptr @npadch_active, align 1
  br label %88

88:                                               ; preds = %87, %50, %45, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_meta(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %87

5:                                                ; preds = %3
  %6 = load ptr, ptr @kbd, align 4
  %7 = getelementptr inbounds %struct.kbd_struct, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 6
  %26 = getelementptr i8, ptr %25, i32 %15
  %27 = getelementptr i8, ptr %26, i32 %17
  store i8 0, ptr %27, align 1
  %28 = load i32, ptr %14, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i32 [ %28, %24 ], [ %15, %19 ]
  %31 = add i32 %30, 1
  store i32 %31, ptr %14, align 4
  %32 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 6
  %33 = getelementptr i8, ptr %32, i32 %30
  store i8 27, ptr %33, align 1
  br label %36

34:                                               ; preds = %11
  %35 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext 27, i8 noundef zeroext 0) #18
  br label %36

36:                                               ; preds = %34, %29
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 6
  %50 = getelementptr i8, ptr %49, i32 %39
  %51 = getelementptr i8, ptr %50, i32 %41
  store i8 0, ptr %51, align 1
  %52 = load i32, ptr %38, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %52, %48 ], [ %39, %43 ]
  %55 = add i32 %54, 1
  store i32 %55, ptr %38, align 4
  %56 = getelementptr inbounds %struct.tty_buffer, ptr %37, i32 0, i32 6
  %57 = getelementptr i8, ptr %56, i32 %54
  store i8 %1, ptr %57, align 1
  br label %86

58:                                               ; preds = %36
  %59 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 0) #18
  br label %86

60:                                               ; preds = %5
  %61 = or i8 %1, -128
  %62 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 6
  %76 = getelementptr i8, ptr %75, i32 %65
  %77 = getelementptr i8, ptr %76, i32 %67
  store i8 0, ptr %77, align 1
  %78 = load i32, ptr %64, align 4
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i32 [ %78, %74 ], [ %65, %69 ]
  %81 = add i32 %80, 1
  store i32 %81, ptr %64, align 4
  %82 = getelementptr inbounds %struct.tty_buffer, ptr %63, i32 0, i32 6
  %83 = getelementptr i8, ptr %82, i32 %80
  store i8 %61, ptr %83, align 1
  br label %86

84:                                               ; preds = %60
  %85 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %61, i8 noundef zeroext 0) #18
  br label %86

86:                                               ; preds = %84, %79, %58, %53
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %87

87:                                               ; preds = %86, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @k_ascii(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = icmp ult i8 %1, 10
  %7 = add i8 %1, -10
  %8 = select i1 %6, i8 %1, i8 %7
  %9 = select i1 %6, i32 10, i32 16
  %10 = load i1, ptr @npadch_active, align 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load i32, ptr @npadch_value, align 4
  br label %14

13:                                               ; preds = %5
  store i1 true, ptr @npadch_active, align 1
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  %16 = mul i32 %15, %9
  %17 = zext i8 %8 to i32
  %18 = add i32 %16, %17
  store i32 %18, ptr @npadch_value, align 4
  br label %19

19:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @k_lock(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10 {
  %4 = icmp eq i8 %2, 0
  %5 = load i8, ptr @rep, align 1
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = load ptr, ptr @kbd, align 4
  %10 = zext i8 %1 to i32
  %11 = shl nuw i32 1, %10
  %12 = load i8, ptr %9, align 1
  %13 = trunc i32 %11 to i8
  %14 = xor i8 %12, %13
  store i8 %14, ptr %9, align 1
  br label %15

15:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_lowercase(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_slock(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  tail call void @k_shift(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2)
  %4 = icmp eq i8 %2, 0
  %5 = load i8, ptr @rep, align 1
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = load ptr, ptr @kbd, align 4
  %10 = zext i8 %1 to i32
  %11 = shl nuw i32 1, %10
  %12 = getelementptr inbounds %struct.kbd_struct, ptr %9, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = trunc i32 %11 to i8
  %15 = xor i8 %13, %14
  store i8 %15, ptr %12, align 1
  %16 = load i8, ptr %9, align 1
  %17 = xor i8 %16, %15
  %18 = zext i8 %17 to i32
  %19 = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, i8 %14, i8 %15
  store i8 %22, ptr %12, align 1
  br label %23

23:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_dead2(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = zext i8 %1 to i32
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load i32, ptr @diacr, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @handle_diacr(ptr noundef %0, i32 noundef %4) #18
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ %4, %6 ]
  store i32 %12, ptr @diacr, align 4
  br label %13

13:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_brl(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = load ptr, ptr @kbd, align 4
  %5 = getelementptr inbounds %struct.kbd_struct, ptr %4, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 112
  %8 = icmp eq i8 %7, 48
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %11, label %105

11:                                               ; preds = %9
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #19
  br label %105

13:                                               ; preds = %3
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call fastcc void @k_unicode(ptr noundef %0, i32 noundef 10240, i8 noundef zeroext %2)
  br label %105

16:                                               ; preds = %13
  %17 = zext i8 %1 to i32
  %18 = icmp ugt i8 %1, 8
  br i1 %18, label %105, label %19

19:                                               ; preds = %16
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = add nsw i32 %17, -1
  %23 = shl nuw i32 1, %22
  %24 = load i32, ptr @k_brl.pressed, align 4
  %25 = or i32 %24, %23
  store i32 %25, ptr @k_brl.pressed, align 4
  %26 = load i32, ptr @brl_timeout, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %21
  store i32 %25, ptr @k_brl.committing, align 4
  br label %105

29:                                               ; preds = %19
  %30 = load i32, ptr @brl_timeout, align 4
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr @k_brl.committing, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %31, label %78, label %34

34:                                               ; preds = %29
  br i1 %33, label %45, label %35

35:                                               ; preds = %34
  %36 = load i32, ptr @k_brl.releasestart, align 4
  %37 = tail call i32 @__msecs_to_jiffies(i32 noundef %30) #18
  %38 = add i32 %37, %36
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = sub i32 %38, %39
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, ptr @k_brl.pressed, align 4
  %44 = load i32, ptr @k_brl.committing, align 4
  br label %48

45:                                               ; preds = %35, %34
  %46 = load i32, ptr @k_brl.pressed, align 4
  store i32 %46, ptr @k_brl.committing, align 4
  %47 = load volatile i32, ptr @jiffies, align 64
  store i32 %47, ptr @k_brl.releasestart, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %44, %42 ], [ %46, %45 ]
  %50 = phi i32 [ %43, %42 ], [ %46, %45 ]
  %51 = add nsw i32 %17, -1
  %52 = shl nuw i32 1, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  store i32 %54, ptr @k_brl.pressed, align 4
  %55 = icmp eq i32 %54, 0
  %56 = icmp ne i32 %49, 0
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %105

58:                                               ; preds = %48
  %59 = load i32, ptr @brl_nbchords, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = or i32 %49, 10240
  %63 = load i32, ptr @diacr, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @handle_diacr(ptr noundef %0, i32 noundef %62) #18
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i32 [ %66, %65 ], [ %62, %61 ]
  store i32 %68, ptr @diacr, align 4
  br label %77

69:                                               ; preds = %58
  %70 = load i32, ptr @k_brlcommit.committed, align 4
  %71 = or i32 %70, %49
  store i32 %71, ptr @k_brlcommit.committed, align 4
  %72 = load i32, ptr @k_brlcommit.chords, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr @k_brlcommit.chords, align 4
  %74 = icmp eq i32 %73, %59
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = or i32 %71, 10240
  tail call fastcc void @k_unicode(ptr noundef %0, i32 noundef %76, i8 noundef zeroext 0) #18
  store i32 0, ptr @k_brlcommit.chords, align 4
  store i32 0, ptr @k_brlcommit.committed, align 4
  br label %77

77:                                               ; preds = %75, %69, %67
  store i32 0, ptr @k_brl.committing, align 4
  br label %105

78:                                               ; preds = %29
  br i1 %33, label %99, label %79

79:                                               ; preds = %78
  %80 = load i32, ptr @brl_nbchords, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = or i32 %32, 10240
  %84 = load i32, ptr @diacr, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = tail call fastcc i32 @handle_diacr(ptr noundef %0, i32 noundef %83) #18
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i32 [ %87, %86 ], [ %83, %82 ]
  store i32 %89, ptr @diacr, align 4
  br label %98

90:                                               ; preds = %79
  %91 = load i32, ptr @k_brlcommit.committed, align 4
  %92 = or i32 %91, %32
  store i32 %92, ptr @k_brlcommit.committed, align 4
  %93 = load i32, ptr @k_brlcommit.chords, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr @k_brlcommit.chords, align 4
  %95 = icmp eq i32 %94, %80
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = or i32 %92, 10240
  tail call fastcc void @k_unicode(ptr noundef %0, i32 noundef %97, i8 noundef zeroext 0) #18
  store i32 0, ptr @k_brlcommit.chords, align 4
  store i32 0, ptr @k_brlcommit.committed, align 4
  br label %98

98:                                               ; preds = %96, %90, %88
  store i32 0, ptr @k_brl.committing, align 4
  br label %99

99:                                               ; preds = %98, %78
  %100 = add nsw i32 %17, -1
  %101 = shl nuw i32 1, %100
  %102 = xor i32 %101, -1
  %103 = load i32, ptr @k_brl.pressed, align 4
  %104 = and i32 %103, %102
  store i32 %104, ptr @k_brl.pressed, align 4
  br label %105

105:                                              ; preds = %99, %77, %48, %28, %21, %16, %15, %11, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @k_ignore(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #11 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_null(ptr nocapture noundef readnone %0) #0 {
  store i32 0, ptr @shift_state, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) @shift_down, i8 0, i32 9, i1 false) #18
  %2 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #18
  %3 = icmp ult i32 %2, 256
  br i1 %3, label %4, label %27

4:                                                ; preds = %23, %1
  %5 = phi i32 [ %25, %23 ], [ %2, %1 ]
  %6 = load ptr, ptr @key_maps, align 4
  %7 = getelementptr i16, ptr %6, i32 %5
  %8 = load i16, ptr %7, align 2
  %9 = lshr i16 %8, 8
  %10 = trunc i16 %9 to i8
  %11 = xor i8 %10, -16
  switch i8 %11, label %23 [
    i8 12, label %12
    i8 7, label %12
  ]

12:                                               ; preds = %4, %4
  %13 = and i16 %8, 255
  %14 = icmp eq i16 %13, 8
  %15 = select i1 %14, i16 0, i16 %13
  %16 = zext i16 %15 to i32
  %17 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = add i8 %18, 1
  store i8 %19, ptr %17, align 1
  %20 = shl nuw i32 1, %16
  %21 = load i32, ptr @shift_state, align 4
  %22 = or i32 %21, %20
  store i32 %22, ptr @shift_state, align 4
  br label %23

23:                                               ; preds = %12, %4
  %24 = add nuw nsw i32 %5, 1
  %25 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %24) #18
  %26 = icmp ult i32 %25, 256
  br i1 %26, label %4, label %27

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_enter(ptr noundef %0) #0 {
  %2 = load i32, ptr @diacr, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %42, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @kbd, align 4
  %6 = getelementptr inbounds %struct.kbd_struct, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 112
  %9 = icmp eq i8 %8, 48
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call fastcc void @to_utf8(ptr noundef %0, i32 noundef %2)
  br label %41

11:                                               ; preds = %4
  %12 = tail call i32 @conv_uni_to_8bit(i32 noundef %2) #18
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %41, label %14

14:                                               ; preds = %11
  %15 = trunc i32 %12 to i8
  %16 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %30 = getelementptr i8, ptr %29, i32 %19
  %31 = getelementptr i8, ptr %30, i32 %21
  store i8 0, ptr %31, align 1
  %32 = load i32, ptr %18, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %32, %28 ], [ %19, %23 ]
  %35 = add i32 %34, 1
  store i32 %35, ptr %18, align 4
  %36 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %37 = getelementptr i8, ptr %36, i32 %34
  store i8 %15, ptr %37, align 1
  br label %40

38:                                               ; preds = %14
  %39 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %15, i8 noundef zeroext 0) #18
  br label %40

40:                                               ; preds = %38, %33
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %41

41:                                               ; preds = %40, %11, %10
  store i32 0, ptr @diacr, align 4
  br label %42

42:                                               ; preds = %41, %1
  %43 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 6
  %57 = getelementptr i8, ptr %56, i32 %46
  %58 = getelementptr i8, ptr %57, i32 %48
  store i8 0, ptr %58, align 1
  %59 = load i32, ptr %45, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i32 [ %59, %55 ], [ %46, %50 ]
  %62 = add i32 %61, 1
  store i32 %62, ptr %45, align 4
  %63 = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 6
  %64 = getelementptr i8, ptr %63, i32 %61
  store i8 13, ptr %64, align 1
  br label %67

65:                                               ; preds = %42
  %66 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext 13, i8 noundef zeroext 0) #18
  br label %67

67:                                               ; preds = %65, %60
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  %68 = load ptr, ptr @kbd, align 4
  %69 = getelementptr inbounds %struct.kbd_struct, ptr %68, i32 0, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %43, align 4
  %75 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 6
  %87 = getelementptr i8, ptr %86, i32 %76
  %88 = getelementptr i8, ptr %87, i32 %78
  store i8 0, ptr %88, align 1
  %89 = load i32, ptr %75, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ %89, %85 ], [ %76, %80 ]
  %92 = add i32 %91, 1
  store i32 %92, ptr %75, align 4
  %93 = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 6
  %94 = getelementptr i8, ptr %93, i32 %91
  store i8 10, ptr %94, align 1
  br label %97

95:                                               ; preds = %73
  %96 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 0) #18
  br label %97

97:                                               ; preds = %95, %90
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %98

98:                                               ; preds = %97, %67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_show_ptregs(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #14, !srcloc !38
  %5 = add i32 %4, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @show_regs(ptr noundef nonnull %7) #18
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_show_mem(ptr nocapture noundef readnone %0) #0 {
  tail call void @show_mem(i32 noundef 0, ptr noundef null) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_show_state(ptr nocapture noundef readnone %0) #0 {
  tail call void @show_state_filter(i32 noundef 0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_send_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 6
  %16 = getelementptr i8, ptr %15, i32 %10
  %17 = getelementptr i8, ptr %16, i32 %12
  store i8 1, ptr %17, align 1
  %18 = load i32, ptr %9, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %9, align 4
  %20 = getelementptr i8, ptr %15, i32 %18
  store i8 0, ptr %20, align 1
  br label %23

21:                                               ; preds = %8, %1
  %22 = tail call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  br label %23

23:                                               ; preds = %21, %14
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_lastcons(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @last_console, align 4
  %3 = tail call i32 @set_console(i32 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fn_caps_toggle(ptr nocapture noundef readnone %0) #10 {
  %2 = load i8, ptr @rep, align 1, !range !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @kbd, align 4
  %6 = getelementptr inbounds %struct.kbd_struct, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = xor i8 %7, 8
  store i8 %8, ptr %6, align 1
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_num(ptr noundef %0) #0 {
  %2 = load ptr, ptr @kbd, align 4
  %3 = getelementptr inbounds %struct.kbd_struct, ptr %2, i32 0, i32 4
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  store i8 79, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 1), align 1
  store i8 80, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 2), align 1
  %8 = tail call i32 @strlen(ptr noundef nonnull @applkey.buf) #18
  %9 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %0, ptr noundef nonnull @applkey.buf, i8 noundef zeroext 0, i32 noundef %8) #18
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  br label %17

10:                                               ; preds = %1
  %11 = load i8, ptr @rep, align 1, !range !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.kbd_struct, ptr %2, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = xor i8 %15, 4
  store i8 %16, ptr %14, align 1
  br label %17

17:                                               ; preds = %13, %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_hold(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i8, ptr @rep, align 1, !range !34
  %5 = icmp eq i8 %4, 0
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 19, i32 1
  %10 = load i8, ptr %9, align 4, !range !34
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @start_tty(ptr noundef nonnull %3) #18
  br label %14

13:                                               ; preds = %8
  tail call void @stop_tty(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %13, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_scroll_forw(ptr noundef %0) #0 {
  tail call void @scrollfront(ptr noundef %0, i32 noundef 0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_scroll_back(ptr noundef %0) #0 {
  tail call void @scrollback(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_boot_it(ptr nocapture noundef readnone %0) #0 {
  tail call void @ctrl_alt_del() #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fn_caps_on(ptr nocapture noundef readnone %0) #10 {
  %2 = load i8, ptr @rep, align 1, !range !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @kbd, align 4
  %6 = getelementptr inbounds %struct.kbd_struct, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 8
  store i8 %8, ptr %6, align 1
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @fn_compose(ptr nocapture noundef readnone %0) #13 {
  store i1 true, ptr @dead_key_next, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_SAK(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @fg_console, align 4
  %3 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %2, i32 1
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_dec_console(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @fg_console, align 4
  %3 = load i32, ptr @want_console, align 4
  %4 = icmp eq i32 %3, -1
  %5 = select i1 %4, i32 %2, i32 %3
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi i32 [ %5, %1 ], [ %12, %10 ]
  %8 = add i32 %7, -1
  %9 = icmp eq i32 %8, %5
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %7, 0
  %12 = select i1 %11, i32 62, i32 %8
  %13 = tail call i32 @vc_cons_allocated(i32 noundef %12) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ %12, %10 ], [ %5, %6 ]
  %17 = tail call i32 @set_console(i32 noundef %16) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_inc_console(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @fg_console, align 4
  %3 = load i32, ptr @want_console, align 4
  %4 = icmp eq i32 %3, -1
  %5 = select i1 %4, i32 %2, i32 %3
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi i32 [ %5, %1 ], [ %12, %10 ]
  %8 = add i32 %7, 1
  %9 = icmp eq i32 %8, %5
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %8, 63
  %12 = select i1 %11, i32 0, i32 %8
  %13 = tail call i32 @vc_cons_allocated(i32 noundef %12) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ %12, %10 ], [ %5, %6 ]
  %17 = tail call i32 @set_console(i32 noundef %16) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fn_spawn_con(ptr nocapture noundef readnone %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @vt_spawn_con) #18
  %2 = load ptr, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 2), align 4
  %6 = tail call i32 @kill_pid(ptr noundef nonnull %2, i32 noundef %5, i32 noundef 1) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  tail call void @put_pid(ptr noundef %9) #18
  store ptr null, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  br label %10

10:                                               ; preds = %8, %4, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %11 = load i16, ptr @vt_spawn_con, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @vt_spawn_con, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fn_bare_num(ptr nocapture noundef readnone %0) #10 {
  %2 = load i8, ptr @rep, align 1, !range !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @kbd, align 4
  %6 = getelementptr inbounds %struct.kbd_struct, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = xor i8 %7, 4
  store i8 %8, ptr %6, align 1
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_state_filter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_console(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @applkey(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  %5 = select i1 %4, i8 91, i8 79
  store i8 %5, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 1), align 1
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 2), align 1
  %7 = tail call i32 @strlen(ptr noundef nonnull @applkey.buf) #18
  %8 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %0, ptr noundef nonnull @applkey.buf, i8 noundef zeroext 0, i32 noundef %7) #18
  tail call void @tty_flip_buffer_push(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scrollfront(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scrollback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ctrl_alt_del() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kbd_led_trigger_activate(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !36
  tail call void @tasklet_unlock_wait(ptr noundef nonnull @keyboard_tasklet) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !37
  %5 = load i32, ptr @ledstate, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kbd_led_trigger, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %5
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 255
  tail call void @led_trigger_event(ptr noundef %3, i32 noundef %12) #18
  br label %13

13:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #18, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kbd_bh(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %3 = load i32, ptr @fg_console, align 4
  %4 = getelementptr %struct.kbd_struct, ptr @kbd_table, i32 %3, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = load i8, ptr @ledioctl, align 1
  %9 = lshr i8 %5, 1
  %10 = and i8 %9, 15
  %11 = select i1 %7, i8 %10, i8 %8
  %12 = zext i8 %11 to i32
  %13 = load ptr, ptr @kbd, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %16, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %2) #18
  %18 = load i1, ptr @vt_switch, align 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = xor i32 %17, -1
  store i32 %20, ptr @ledstate, align 4
  store i1 false, ptr @vt_switch, align 1
  br label %24

21:                                               ; preds = %1
  %22 = load i32, ptr @ledstate, align 4
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %26 = xor i32 %25, %17
  br label %27

27:                                               ; preds = %38, %24
  %28 = phi i32 [ 0, %24 ], [ %39, %38 ]
  %29 = getelementptr [12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 %28, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %26
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = getelementptr [12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 %28
  %35 = and i32 %30, %17
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 0, i32 255
  tail call void @led_trigger_event(ptr noundef %34, i32 noundef %37) #18
  br label %38

38:                                               ; preds = %33, %27
  %39 = add nuw nsw i32 %28, 1
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %41, label %27

41:                                               ; preds = %38
  store i32 %17, ptr @ledstate, align 4
  br label %42

42:                                               ; preds = %41, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @getkeycode_helper(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @input_get_keycode(ptr noundef %4, ptr noundef %1) #18
  %6 = getelementptr inbounds %struct.getset_keycode_data, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = icmp eq i32 %5, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_keycode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @setkeycode_helper(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @input_set_keycode(ptr noundef %4, ptr noundef %1) #18
  %6 = getelementptr inbounds %struct.getset_keycode_data, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = icmp eq i32 %5, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_set_keycode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2152585100}
!10 = !{i64 487488, i64 2147977459, i64 2147977485, i64 2147977532, i64 2147977554, i64 2147977582, i64 2147977602}
!11 = !{i64 2147991231, i64 2147991257, i64 2147991286, i64 2147991320, i64 2147991351, i64 2147991374}
!12 = !{i64 4079703}
!13 = !{i64 4079900}
!14 = !{i64 2151565179}
!15 = !{i64 2153237817, i64 2153238097, i64 2153238431, i64 2153238765}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2151584169, i64 2151584194}
!18 = !{i64 2153246546, i64 2153246826, i64 2153247160, i64 2153247494}
!19 = !{i64 2153257731, i64 2153258011, i64 2153258345, i64 2153258679}
!20 = !{i64 2153270056, i64 2153270336, i64 2153270670, i64 2153271004}
!21 = !{!"auto-init"}
!22 = !{i64 2151583591, i64 2151583616}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2153280184, i64 2153280464, i64 2153280798, i64 2153281132}
!25 = !{i64 2153288620, i64 2153288900, i64 2153289234, i64 2153289568}
!26 = !{i64 2153296818, i64 2153297098, i64 2153297432, i64 2153297766}
!27 = !{i64 438577, i64 438594, i64 2147922664}
!28 = !{i64 2153315400, i64 2153315680, i64 2153316014, i64 2153316348}
!29 = !{i64 2153323963, i64 2153324243, i64 2153324577, i64 2153324911}
!30 = !{i64 2149351784}
!31 = !{i64 2149347608}
!32 = !{i64 2149347683, i64 2149347710, i64 2149347757, i64 2149347779, i64 2149347807, i64 2149347827}
!33 = !{i64 2149374787}
!34 = !{i8 0, i8 2}
!35 = !{i64 2147988874, i64 2147988900, i64 2147988929, i64 2147988963, i64 2147988994, i64 2147989017}
!36 = !{i64 2152584189}
!37 = !{i64 2152584779}
!38 = !{i64 401427}
