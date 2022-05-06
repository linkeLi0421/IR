; ModuleID = '/llk/IR/drivers/input/joydev.c_pt.bc'
source_filename = "../drivers/input/joydev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.joydev = type { i32, %struct.input_handle, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.device, %struct.cdev, i8, [64 x %struct.js_corr], %struct.JS_DATA_SAVE_TYPE_32, i32, i32, [512 x i16], [512 x i16], [64 x i8], [64 x i8], [64 x i16] }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.js_corr = type { [8 x i32], i16, i16 }
%struct.JS_DATA_SAVE_TYPE_32 = type { i32, i32, i32, i32, %struct.JS_DATA_TYPE, %struct.JS_DATA_TYPE }
%struct.JS_DATA_TYPE = type { i32, i32, i32 }
%struct.js_event = type { i32, i16, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.joydev_client = type { [64 x %struct.js_event], i32, i32, i32, %struct.spinlock, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.57 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@__UNIQUE_ID_author220 = internal constant [46 x i8] c"joydev.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description221 = internal constant [46 x i8] c"joydev.description=Joystick device interfaces\00", section ".modinfo", align 1
@__UNIQUE_ID_file222 = internal constant [33 x i8] c"joydev.file=drivers/input/joydev\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [19 x i8] c"joydev.license=GPL\00", section ".modinfo", align 1
@joydev_handler = internal global %struct.input_handler { ptr null, ptr @joydev_event, ptr null, ptr null, ptr @joydev_match, ptr @joydev_connect, ptr @joydev_disconnect, ptr null, i8 1, i32 0, ptr @.str, ptr @joydev_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 4
@__initcall__kmod_joydev__241_1097_joydev_init6 = internal global ptr @joydev_init, section ".initcall6.init", align 4
@__exitcall_joydev_exit = internal global ptr @joydev_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [7 x i8] c"joydev\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@joydev_blacklist = internal constant <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }> <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [11 x i32], [13 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024], [13 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [11 x i32], [13 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [13 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1356, i16 616, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1356, i16 1476, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1356, i16 2508, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1356, i16 2976, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 8406, i16 -13545, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1406, i16 8201, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1406, i16 8206, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1406, i16 8198, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id { i32 8198, i16 0, i16 1406, i16 8199, i16 0, [1 x i32] zeroinitializer, [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 64], i32 0 }, %struct.input_device_id zeroinitializer }>, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\013joydev: failed to reserve new minor: %d\0A\00", align 1
@joydev_connect.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"&joydev->mutex\00", align 1
@joydev_connect.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"&joydev->wait\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"js%d\00", align 1
@input_class = external dso_local global %struct.class, align 4
@joydev_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @joydev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @joydev_poll, ptr @joydev_ioctl, ptr null, ptr null, i32 0, ptr @joydev_open, ptr null, ptr @joydev_release, ptr null, ptr @joydev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@joydev_ids = internal constant <{ %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id }> <{ %struct.input_device_id { i32 144, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 8], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 144, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 8], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] [i32 4, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 144, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 8], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] [i32 256, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 144, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 8], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] [i32 64, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [10 x i32], [14 x i32] }> <{ [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [14 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [10 x i32], [14 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [10 x i32], [14 x i32] }> <{ [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536], [14 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], [24 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0], [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer }>, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author220, ptr @__UNIQUE_ID_description221, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__exitcall_joydev_exit, ptr @__initcall__kmod_joydev__241_1097_joydev_init6, ptr @joydev_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @joydev_exit() #0 section ".exit.text" {
  tail call void @input_unregister_handler(ptr noundef nonnull @joydev_handler) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @joydev_init() #0 section ".init.text" {
  %1 = tail call i32 @input_register_handler(ptr noundef nonnull @joydev_handler) #12
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @joydev_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr %0, align 4
  switch i32 %1, label %103 [
    i32 1, label %6
    i32 3, label %16
  ]

6:                                                ; preds = %4
  %7 = icmp ult i32 %2, 256
  %8 = icmp eq i32 %3, 2
  %9 = or i1 %7, %8
  br i1 %9, label %103, label %10

10:                                               ; preds = %6
  %11 = add i32 %2, -256
  %12 = getelementptr %struct.joydev, ptr %5, i32 0, i32 13, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = trunc i16 %13 to i8
  %15 = trunc i32 %3 to i16
  br label %50

16:                                               ; preds = %4
  %17 = getelementptr %struct.joydev, ptr %5, i32 0, i32 15, i32 %2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.joydev, ptr %5, i32 0, i32 9, i32 %19
  %21 = getelementptr %struct.joydev, ptr %5, i32 0, i32 9, i32 %19, i32 2
  %22 = load i16, ptr %21, align 2
  switch i16 %22, label %42 [
    i16 0, label %38
    i16 1, label %23
  ]

23:                                               ; preds = %16
  %24 = load i32, ptr %20, align 4
  %25 = icmp slt i32 %24, %3
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr [8 x i32], ptr %20, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %3
  br i1 %29, label %38, label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ 3, %26 ], [ 2, %23 ]
  %32 = phi i32 [ %28, %26 ], [ %24, %23 ]
  %33 = getelementptr [8 x i32], ptr %20, i32 0, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %3, %32
  %36 = mul i32 %34, %35
  %37 = ashr i32 %36, 14
  br label %38

38:                                               ; preds = %30, %26, %16
  %39 = phi i32 [ %3, %16 ], [ 0, %26 ], [ %37, %30 ]
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 -32767) #12
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 32767) #12
  br label %42

42:                                               ; preds = %38, %16
  %43 = phi i32 [ %41, %38 ], [ 0, %16 ]
  %44 = getelementptr %struct.joydev, ptr %5, i32 0, i32 17, i32 %19
  %45 = load i16, ptr %44, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %103, label %48

48:                                               ; preds = %42
  %49 = trunc i32 %43 to i16
  store i16 %49, ptr %44, align 2
  br label %50

50:                                               ; preds = %48, %10
  %51 = phi i8 [ %18, %48 ], [ %14, %10 ]
  %52 = phi i8 [ 2, %48 ], [ 1, %10 ]
  %53 = phi i16 [ %49, %48 ], [ %15, %10 ]
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = tail call i32 @jiffies_to_msecs(i32 noundef %54) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %56 = getelementptr inbounds %struct.joydev, ptr %5, i32 0, i32 3
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %101, label %59

59:                                               ; preds = %50
  %60 = zext i8 %51 to i64
  %61 = shl nuw i64 %60, 56
  %62 = zext i8 %52 to i64
  %63 = shl nuw nsw i64 %62, 48
  %64 = or i64 %63, %61
  %65 = zext i16 %53 to i64
  %66 = shl nuw nsw i64 %65, 32
  %67 = or i64 %64, %66
  %68 = zext i32 %55 to i64
  %69 = or i64 %67, %68
  br label %70

70:                                               ; preds = %95, %59
  %71 = phi ptr [ %57, %59 ], [ %99, %95 ]
  %72 = getelementptr i8, ptr %71, i32 -536
  %73 = getelementptr i8, ptr %71, i32 -4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %71, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %75) #12
  %76 = getelementptr i8, ptr %71, i32 -24
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr [64 x %struct.js_event], ptr %72, i32 0, i32 %77
  store i64 %69, ptr %78, align 4
  %79 = getelementptr i8, ptr %71, i32 -16
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.joydev, ptr %74, i32 0, i32 11
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr inbounds %struct.joydev, ptr %74, i32 0, i32 12
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, %82
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %70
  %88 = load i32, ptr %76, align 4
  %89 = add i32 %88, 1
  %90 = and i32 %89, 63
  store i32 %90, ptr %76, align 4
  %91 = getelementptr i8, ptr %71, i32 -20
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, %90
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 0, ptr %79, align 4
  br label %95

95:                                               ; preds = %94, %87, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %96 = load i16, ptr %75, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %98 = getelementptr i8, ptr %71, i32 -8
  tail call void @kill_fasync(ptr noundef %98, i32 noundef 29, i32 noundef 1) #12
  %99 = load volatile ptr, ptr %71, align 4
  %100 = icmp eq ptr %99, %56
  br i1 %100, label %101, label %70

101:                                              ; preds = %95, %50
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %102 = getelementptr inbounds %struct.joydev, ptr %5, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %102, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %103

103:                                              ; preds = %101, %42, %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @joydev_match(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = alloca [24 x i32], align 8
  %4 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef nonnull @joydev_blacklist) #12
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 1, i32 0)) #12
  br i1 %6, label %42, label %7

7:                                                ; preds = %5
  %8 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 2)) #12
  br i1 %8, label %42, label %9

9:                                                ; preds = %7
  %10 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 3)) #12
  br i1 %10, label %42, label %11

11:                                               ; preds = %9
  %12 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 4)) #12
  br i1 %12, label %42, label %13

13:                                               ; preds = %11
  %14 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 5)) #12
  br i1 %14, label %42, label %15

15:                                               ; preds = %13
  %16 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 6)) #12
  br i1 %16, label %42, label %17

17:                                               ; preds = %15
  %18 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 7)) #12
  br i1 %18, label %42, label %19

19:                                               ; preds = %17
  %20 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 8)) #12
  br i1 %20, label %42, label %21

21:                                               ; preds = %19
  %22 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 9)) #12
  br i1 %22, label %42, label %23

23:                                               ; preds = %21
  %24 = tail call zeroext i1 @input_match_device_id(ptr noundef %1, ptr noundef getelementptr inbounds (<{ { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id, %struct.input_device_id }>, ptr @joydev_blacklist, i32 0, i32 10)) #12
  br i1 %24, label %42, label %25

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #12
  %26 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %37 [
    i32 31, label %28
    i32 27, label %28
    i32 11, label %28
  ]

28:                                               ; preds = %25, %25, %25
  store i64 3, ptr %3, align 8
  %29 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 8
  %30 = call i32 @bcmp(ptr noundef dereferenceable(8) %29, ptr noundef nonnull dereferenceable(8) %3, i32 8) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i32 96, i1 false) #12
  %33 = getelementptr inbounds i32, ptr %3, i32 8
  store i32 458752, ptr %33, align 8
  %34 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  %35 = call i32 @bcmp(ptr noundef dereferenceable(96) %34, ptr noundef nonnull dereferenceable(96) %3, i32 96) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %28, %25
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #12
  br label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3
  %40 = load i16, ptr %39, align 4
  %41 = icmp eq i16 %40, 22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #12
  br label %42

42:                                               ; preds = %38, %37, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %2
  %43 = phi i1 [ false, %23 ], [ true, %37 ], [ false, %2 ], [ false, %5 ], [ false, %7 ], [ false, %9 ], [ false, %11 ], [ false, %13 ], [ false, %15 ], [ false, %17 ], [ false, %19 ], [ false, %21 ], [ %41, %38 ]
  ret i1 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @joydev_connect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = tail call i32 @input_get_new_minor(i32 noundef 0, i32 noundef 16, i1 noundef zeroext true) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %4) #13
  br label %175

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 5280) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %173, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 4
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @joydev_connect.__key) #12
  %17 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef nonnull @joydev_connect.__key.4) #12
  %18 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 8
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 6
  %20 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  %21 = icmp eq ptr %1, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %24 = tail call ptr @get_device(ptr noundef %23) #12
  %25 = getelementptr i8, ptr %24, i32 -400
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi ptr [ %25, %22 ], [ null, %12 ]
  %28 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 1
  %29 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 1, i32 3
  store ptr %27, ptr %29, align 8
  %30 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 6, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load ptr, ptr %19, align 8
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi ptr [ %34, %33 ], [ %31, %26 ]
  %37 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 1, i32 2
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 1, i32 4
  store ptr %0, ptr %38, align 4
  store ptr %10, ptr %28, align 4
  %39 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 8
  %40 = tail call i32 @_find_next_bit_le(ptr noundef %39, i32 noundef 64, i32 noundef 0) #12
  %41 = icmp slt i32 %40, 64
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 11
  br label %47

44:                                               ; preds = %47, %35
  %45 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  %46 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 12
  br label %60

47:                                               ; preds = %47, %42
  %48 = phi i32 [ %40, %42 ], [ %58, %47 ]
  %49 = load i32, ptr %43, align 8
  %50 = trunc i32 %49 to i8
  %51 = getelementptr %struct.joydev, ptr %10, i32 0, i32 15, i32 %48
  store i8 %50, ptr %51, align 1
  %52 = trunc i32 %48 to i8
  %53 = load i32, ptr %43, align 8
  %54 = getelementptr %struct.joydev, ptr %10, i32 0, i32 16, i32 %53
  store i8 %52, ptr %54, align 1
  %55 = load i32, ptr %43, align 8
  %56 = add i32 %55, 1
  store i32 %56, ptr %43, align 8
  %57 = add nsw i32 %48, 1
  %58 = tail call i32 @_find_next_bit_le(ptr noundef %39, i32 noundef 64, i32 noundef %57) #12
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %47, label %44

60:                                               ; preds = %79, %44
  %61 = phi i32 [ 32, %44 ], [ %80, %79 ]
  %62 = add nuw nsw i32 %61, 256
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr %45, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %61, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %65, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %60
  %71 = load i32, ptr %46, align 4
  %72 = trunc i32 %71 to i16
  %73 = getelementptr %struct.joydev, ptr %10, i32 0, i32 13, i32 %61
  store i16 %72, ptr %73, align 2
  %74 = trunc i32 %62 to i16
  %75 = load i32, ptr %46, align 4
  %76 = getelementptr %struct.joydev, ptr %10, i32 0, i32 14, i32 %75
  store i16 %74, ptr %76, align 2
  %77 = load i32, ptr %46, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %46, align 4
  br label %79

79:                                               ; preds = %70, %60
  %80 = add nuw nsw i32 %61, 1
  %81 = icmp eq i32 %80, 512
  br i1 %81, label %90, label %60

82:                                               ; preds = %108
  %83 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 11
  %84 = load i32, ptr %83, align 8
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %157

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 26
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br label %111

90:                                               ; preds = %108, %79
  %91 = phi i32 [ %109, %108 ], [ 0, %79 ]
  %92 = add nuw nsw i32 %91, 256
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr %45, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = shl nuw i32 1, %91
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %90
  %100 = load i32, ptr %46, align 4
  %101 = trunc i32 %100 to i16
  %102 = getelementptr %struct.joydev, ptr %10, i32 0, i32 13, i32 %91
  store i16 %101, ptr %102, align 2
  %103 = trunc i32 %92 to i16
  %104 = load i32, ptr %46, align 4
  %105 = getelementptr %struct.joydev, ptr %10, i32 0, i32 14, i32 %104
  store i16 %103, ptr %105, align 2
  %106 = load i32, ptr %46, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %46, align 4
  br label %108

108:                                              ; preds = %99, %90
  %109 = add nuw nsw i32 %91, 1
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %82, label %90

111:                                              ; preds = %153, %86
  %112 = phi i32 [ 0, %86 ], [ %154, %153 ]
  %113 = getelementptr %struct.joydev, ptr %10, i32 0, i32 16, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  br i1 %89, label %122, label %116

116:                                              ; preds = %111
  %117 = getelementptr %struct.input_absinfo, ptr %88, i32 %115, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.input_absinfo, ptr %88, i32 %115, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116, %111
  %123 = getelementptr %struct.joydev, ptr %10, i32 0, i32 9, i32 %112, i32 2
  store i16 0, ptr %123, align 2
  br label %153

124:                                              ; preds = %116
  %125 = getelementptr %struct.joydev, ptr %10, i32 0, i32 9, i32 %112
  %126 = getelementptr %struct.joydev, ptr %10, i32 0, i32 9, i32 %112, i32 2
  store i16 1, ptr %126, align 2
  %127 = getelementptr %struct.input_absinfo, ptr %88, i32 %115, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = trunc i32 %128 to i16
  %130 = getelementptr %struct.joydev, ptr %10, i32 0, i32 9, i32 %112, i32 1
  store i16 %129, ptr %130, align 4
  %131 = load i32, ptr %117, align 4
  %132 = load i32, ptr %119, align 4
  %133 = add i32 %132, %131
  %134 = sdiv i32 %133, 2
  %135 = getelementptr %struct.input_absinfo, ptr %88, i32 %115, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = sub i32 %134, %136
  store i32 %137, ptr %125, align 4
  %138 = load i32, ptr %135, align 4
  %139 = add i32 %138, %134
  %140 = getelementptr [8 x i32], ptr %125, i32 0, i32 1
  store i32 %139, ptr %140, align 4
  %141 = load i32, ptr %117, align 4
  %142 = load i32, ptr %119, align 4
  %143 = sub i32 %141, %142
  %144 = sdiv i32 %143, 2
  %145 = load i32, ptr %135, align 4
  %146 = mul i32 %145, -2
  %147 = add i32 %146, %144
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %124
  %150 = sdiv i32 536870912, %147
  %151 = getelementptr [8 x i32], ptr %125, i32 0, i32 2
  store i32 %150, ptr %151, align 4
  %152 = getelementptr [8 x i32], ptr %125, i32 0, i32 3
  store i32 %150, ptr %152, align 4
  br label %153

153:                                              ; preds = %149, %124, %122
  %154 = add nuw nsw i32 %112, 1
  %155 = load i32, ptr %83, align 8
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %111, label %157

157:                                              ; preds = %153, %82
  %158 = or i32 %4, 13631488
  %159 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 6, i32 27
  store i32 %158, ptr %159, align 8
  %160 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 6, i32 31
  store ptr @input_class, ptr %160, align 4
  %161 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %162 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 6, i32 1
  store ptr %161, ptr %162, align 4
  %163 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 6, i32 33
  store ptr @joydev_free, ptr %163, align 4
  tail call void @device_initialize(ptr noundef %19) #12
  %164 = tail call i32 @input_register_handle(ptr noundef %28) #12
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.joydev, ptr %10, i32 0, i32 7
  tail call void @cdev_init(ptr noundef %167, ptr noundef nonnull @joydev_fops) #12
  %168 = tail call i32 @cdev_device_add(ptr noundef %167, ptr noundef %19) #12
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %166
  tail call fastcc void @joydev_cleanup(ptr noundef nonnull %10)
  tail call void @input_unregister_handle(ptr noundef %28) #12
  br label %171

171:                                              ; preds = %170, %157
  %172 = phi i32 [ %164, %157 ], [ %168, %170 ]
  tail call void @put_device(ptr noundef %19) #12
  br label %173

173:                                              ; preds = %171, %8
  %174 = phi i32 [ %172, %171 ], [ -12, %8 ]
  tail call void @input_free_minor(i32 noundef %4) #12
  br label %175

175:                                              ; preds = %173, %166, %6
  %176 = phi i32 [ %4, %6 ], [ %174, %173 ], [ 0, %166 ]
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @joydev_disconnect(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.joydev, ptr %2, i32 0, i32 7
  %4 = getelementptr inbounds %struct.joydev, ptr %2, i32 0, i32 6
  tail call void @cdev_device_del(ptr noundef %3, ptr noundef %4) #12
  tail call fastcc void @joydev_cleanup(ptr noundef %2)
  %5 = getelementptr inbounds %struct.joydev, ptr %2, i32 0, i32 6, i32 27
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1048575
  tail call void @input_free_minor(i32 noundef %7) #12
  tail call void @input_unregister_handle(ptr noundef %0) #12
  tail call void @put_device(ptr noundef %4) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_match_device_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_new_minor(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @joydev_free(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  tail call void @put_device(ptr noundef %6) #12
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i32 -88
  tail call void @kfree(ptr noundef %8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @joydev_cleanup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 8
  store i8 0, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %11, %8 ], [ %6, %1 ]
  %10 = getelementptr i8, ptr %9, i32 -8
  tail call void @kill_fasync(ptr noundef %10, i32 noundef 29, i32 noundef 6) #12
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %14 = load i16, ptr %4, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %16 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %16, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %17 = load i32, ptr %0, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %20) #12
  br label %21

21:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_minor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @joydev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca %struct.JS_DATA_TYPE, align 4
  %6 = alloca %struct.js_event, align 8
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !14
  %14 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 8
  %15 = load i8, ptr %14, align 4, !range !15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %236, label %17

17:                                               ; preds = %4
  %18 = icmp ult i32 %2, 8
  br i1 %18, label %236, label %19

19:                                               ; preds = %17
  %20 = icmp eq i32 %2, 12
  br i1 %20, label %21, label %89

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %22 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #12
  store i32 0, ptr %5, align 4
  %23 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 27
  %26 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #12
  br label %27

27:                                               ; preds = %31, %21
  %28 = phi i32 [ 0, %21 ], [ %44, %31 ]
  %29 = phi i32 [ 0, %21 ], [ %45, %31 ]
  %30 = icmp eq i32 %29, %26
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = getelementptr %struct.joydev, ptr %11, i32 0, i32 14, i32 %29
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr %25, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  %42 = shl nuw i32 1, %29
  %43 = select i1 %41, i32 0, i32 %42
  %44 = or i32 %43, %28
  store i32 %44, ptr %5, align 4
  %45 = add nuw nsw i32 %29, 1
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %27

47:                                               ; preds = %31, %27
  %48 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 17
  %49 = load i16, ptr %48, align 8
  %50 = sdiv i16 %49, 256
  %51 = add nsw i16 %50, 128
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 10, i32 5, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %52, %54
  %56 = getelementptr inbounds %struct.JS_DATA_TYPE, ptr %5, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  %57 = getelementptr %struct.joydev, ptr %11, i32 0, i32 17, i32 1
  %58 = load i16, ptr %57, align 2
  %59 = sdiv i16 %58, 256
  %60 = add nsw i16 %59, 128
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 10, i32 5, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %61, %63
  %65 = getelementptr inbounds %struct.JS_DATA_TYPE, ptr %5, i32 0, i32 2
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %66) #12
  %67 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 3
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 2
  store i32 %69, ptr %70, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %71 = load i16, ptr %66, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %73 = load i16, ptr %22, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1090519040) #15, !srcloc !18
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %47
  %79 = tail call ptr @llvm.thread.pointer() #12
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %80) #16, !srcloc !19
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %84 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 12, i32 -14
  br label %87

87:                                               ; preds = %78, %47
  %88 = phi i32 [ -14, %47 ], [ %86, %78 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %236

89:                                               ; preds = %19
  %90 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 11
  %93 = load i32, ptr %92, align 8
  %94 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 12
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %93
  %97 = icmp slt i32 %91, %96
  br i1 %97, label %138, label %98

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 2048
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %236

109:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !14
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #12
  %110 = getelementptr inbounds %struct.joydev, ptr %11, i32 0, i32 2
  %111 = call i32 @prepare_to_wait_event(ptr noundef %110, ptr noundef nonnull %7, i32 noundef 1) #12
  %112 = load i8, ptr %14, align 4, !range !15
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %135, label %114

114:                                              ; preds = %130, %109
  %115 = phi i32 [ %131, %130 ], [ %111, %109 ]
  %116 = load ptr, ptr %10, align 4
  %117 = load i32, ptr %90, align 4
  %118 = getelementptr inbounds %struct.joydev, ptr %116, i32 0, i32 11
  %119 = load i32, ptr %118, align 8
  %120 = getelementptr inbounds %struct.joydev, ptr %116, i32 0, i32 12
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, %119
  %123 = icmp slt i32 %117, %122
  br i1 %123, label %135, label %124

124:                                              ; preds = %114
  %125 = load i32, ptr %99, align 4
  %126 = load i32, ptr %101, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = icmp eq i32 %115, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  call void @schedule() #12
  %131 = call i32 @prepare_to_wait_event(ptr noundef %110, ptr noundef nonnull %7, i32 noundef 1) #12
  %132 = load i8, ptr %14, align 4, !range !15
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %135, label %114

134:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #12
  br label %236

135:                                              ; preds = %130, %124, %114, %109
  call void @finish_wait(ptr noundef %110, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #12
  %136 = load i8, ptr %14, align 4, !range !15
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %236, label %138

138:                                              ; preds = %135, %98, %89
  %139 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 4
  %140 = getelementptr inbounds %struct.js_event, ptr %6, i32 0, i32 2
  %141 = getelementptr inbounds %struct.js_event, ptr %6, i32 0, i32 3
  %142 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 27
  %143 = getelementptr inbounds %struct.js_event, ptr %6, i32 0, i32 1
  br label %144

144:                                              ; preds = %192, %138
  %145 = phi i32 [ %146, %192 ], [ 0, %138 ]
  %146 = add i32 %145, 8
  %147 = icmp ugt i32 %146, %2
  br i1 %147, label %203, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %10, align 4
  call void @_raw_spin_lock_irq(ptr noundef %139) #12
  %150 = load i32, ptr %90, align 4
  %151 = getelementptr inbounds %struct.joydev, ptr %149, i32 0, i32 11
  %152 = load i32, ptr %151, align 8
  %153 = getelementptr inbounds %struct.joydev, ptr %149, i32 0, i32 12
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %152
  %156 = icmp slt i32 %150, %155
  br i1 %156, label %157, label %200

157:                                              ; preds = %148
  %158 = load volatile i32, ptr @jiffies, align 64
  %159 = call i32 @jiffies_to_msecs(i32 noundef %158) #12
  store i32 %159, ptr %6, align 8
  %160 = load i32, ptr %90, align 4
  %161 = load i32, ptr %153, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  store i8 -127, ptr %140, align 2
  %164 = trunc i32 %160 to i8
  store i8 %164, ptr %141, align 1
  %165 = and i32 %160, 255
  %166 = getelementptr %struct.joydev, ptr %149, i32 0, i32 14, i32 %165
  %167 = load i16, ptr %166, align 2
  %168 = zext i16 %167 to i32
  %169 = lshr i32 %168, 5
  %170 = getelementptr i32, ptr %142, i32 %169
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %168, 31
  %173 = shl nuw i32 1, %172
  %174 = and i32 %173, %171
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i16
  br label %183

177:                                              ; preds = %157
  store i8 -126, ptr %140, align 2
  %178 = sub i32 %160, %161
  %179 = trunc i32 %178 to i8
  store i8 %179, ptr %141, align 1
  %180 = and i32 %178, 255
  %181 = getelementptr %struct.joydev, ptr %149, i32 0, i32 17, i32 %180
  %182 = load i16, ptr %181, align 2
  br label %183

183:                                              ; preds = %177, %163
  %184 = phi i16 [ %176, %163 ], [ %182, %177 ]
  store i16 %184, ptr %143, align 4
  %185 = add i32 %160, 1
  store i32 %185, ptr %90, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %186 = load i16, ptr %139, align 4
  %187 = add i16 %186, 1
  store i16 %187, ptr %139, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %188 = getelementptr i8, ptr %1, i32 %145
  %189 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %188, i32 8, i32 -1090519040) #15, !srcloc !18
  %190 = extractvalue { i32, i32 } %189, 0
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %236

192:                                              ; preds = %183
  %193 = tail call ptr @llvm.thread.pointer() #12
  %194 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 3
  %195 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %194) #16, !srcloc !19
  %196 = and i32 %195, -13
  %197 = or i32 %196, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %197) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %198 = call i32 @arm_copy_to_user(ptr noundef %188, ptr noundef nonnull %6, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %195) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %144, label %236

200:                                              ; preds = %148
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %201 = load i16, ptr %139, align 4
  %202 = add i16 %201, 1
  store i16 %202, ptr %139, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %203

203:                                              ; preds = %200, %144
  %204 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 1
  %205 = getelementptr inbounds %struct.joydev_client, ptr %9, i32 0, i32 2
  br label %206

206:                                              ; preds = %225, %203
  %207 = phi i32 [ %145, %203 ], [ %208, %225 ]
  %208 = add i32 %207, 8
  %209 = icmp ugt i32 %208, %2
  br i1 %209, label %236, label %210

210:                                              ; preds = %206
  call void @_raw_spin_lock_irq(ptr noundef %139) #12
  %211 = load i32, ptr %204, align 4
  %212 = load i32, ptr %205, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %233, label %214

214:                                              ; preds = %210
  %215 = add i32 %212, 1
  store i32 %215, ptr %205, align 4
  %216 = getelementptr [64 x %struct.js_event], ptr %9, i32 0, i32 %212
  %217 = load i64, ptr %216, align 4
  store i64 %217, ptr %6, align 8
  %218 = and i32 %215, 63
  store i32 %218, ptr %205, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %219 = load i16, ptr %139, align 4
  %220 = add i16 %219, 1
  store i16 %220, ptr %139, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %221 = getelementptr i8, ptr %1, i32 %207
  %222 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %221, i32 8, i32 -1090519040) #15, !srcloc !18
  %223 = extractvalue { i32, i32 } %222, 0
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %214
  %226 = tail call ptr @llvm.thread.pointer() #12
  %227 = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 3
  %228 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %227) #16, !srcloc !19
  %229 = and i32 %228, -13
  %230 = or i32 %229, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %230) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %231 = call i32 @arm_copy_to_user(ptr noundef %221, ptr noundef nonnull %6, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %228) #12, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %206, label %236

233:                                              ; preds = %210
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %234 = load i16, ptr %139, align 4
  %235 = add i16 %234, 1
  store i16 %235, ptr %139, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %236

236:                                              ; preds = %233, %225, %214, %206, %192, %183, %135, %134, %104, %87, %17, %4
  %237 = phi i32 [ %88, %87 ], [ -19, %4 ], [ -22, %17 ], [ -11, %104 ], [ %115, %134 ], [ -19, %135 ], [ %207, %233 ], [ -14, %214 ], [ %207, %206 ], [ -14, %225 ], [ -14, %192 ], [ -14, %183 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %237
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @joydev_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.joydev_client, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.joydev, ptr %6, i32 0, i32 2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %7, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  tail call void %10(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %1) #12
  %15 = load ptr, ptr %5, align 4
  br label %16

16:                                               ; preds = %14, %9, %2
  %17 = phi ptr [ %6, %2 ], [ %6, %9 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.joydev_client, ptr %4, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.joydev, ptr %17, i32 0, i32 11
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.joydev, ptr %17, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.joydev_client, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.joydev_client, ptr %4, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  %32 = select i1 %31, i32 0, i32 65
  br label %33

33:                                               ; preds = %26, %16
  %34 = phi i32 [ 65, %16 ], [ %32, %26 ]
  %35 = getelementptr inbounds %struct.joydev, ptr %6, i32 0, i32 8
  %36 = load i8, ptr %35, align 4, !range !15
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 24, i32 0
  %39 = or i32 %38, %34
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @joydev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.joydev_client, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = inttoptr i32 %2 to ptr
  %9 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 5
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %320

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 8
  %14 = load i8, ptr %13, align 4, !range !15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %318, label %16

16:                                               ; preds = %12
  switch i32 %1, label %67 [
    i32 5, label %17
    i32 6, label %27
    i32 8, label %36
    i32 7, label %53
  ]

17:                                               ; preds = %16
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #16, !srcloc !19
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %8, i32 -1090519041) #12, !srcloc !22
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %26 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 10, i32 3
  store i32 %25, ptr %26, align 4
  br label %318

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 10, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = tail call ptr @llvm.thread.pointer() #12
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %31) #16, !srcloc !19
  %33 = and i32 %32, -13
  %34 = or i32 %33, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %35 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %29, i32 -1090519041) #12, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %318

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 10
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 40, i32 -1090519040) #15, !srcloc !24
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49, !prof !25

41:                                               ; preds = %36
  %42 = tail call ptr @llvm.thread.pointer() #12
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %43) #16, !srcloc !19
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %47 = tail call i32 @arm_copy_from_user(ptr noundef %37, ptr noundef %8, i32 noundef 40) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %318, label %49, !prof !25

49:                                               ; preds = %41, %36
  %50 = phi i32 [ %47, %41 ], [ 40, %36 ]
  %51 = sub i32 40, %50
  %52 = getelementptr i8, ptr %37, i32 %51
  tail call void @llvm.memset.p0.i32(ptr align 1 %52, i8 0, i32 %50, i1 false) #12
  br label %318

53:                                               ; preds = %16
  %54 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 40, i32 -1090519040) #15, !srcloc !18
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %318

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 10
  %59 = tail call ptr @llvm.thread.pointer() #12
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #16, !srcloc !19
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %64 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %58, i32 noundef 40) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 0, i32 -14
  br label %318

67:                                               ; preds = %16
  %68 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 1, i32 3
  %69 = load ptr, ptr %68, align 4
  switch i32 %1, label %247 [
    i32 1, label %70
    i32 2, label %87
    i32 3, label %101
    i32 4, label %111
    i32 -2147194367, label %120
    i32 -2147390959, label %127
    i32 -2147390958, label %137
    i32 1076128289, label %147
    i32 -2145097182, label %221
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 10, i32 5
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1090519040) #15, !srcloc !24
  %73 = extractvalue { i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83, !prof !25

75:                                               ; preds = %70
  %76 = tail call ptr @llvm.thread.pointer() #12
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %77) #16, !srcloc !19
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %81 = tail call i32 @arm_copy_from_user(ptr noundef %71, ptr noundef %8, i32 noundef 12) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %318, label %83, !prof !25

83:                                               ; preds = %75, %70
  %84 = phi i32 [ %81, %75 ], [ 12, %70 ]
  %85 = sub i32 12, %84
  %86 = getelementptr i8, ptr %71, i32 %85
  tail call void @llvm.memset.p0.i32(ptr align 1 %86, i8 0, i32 %84, i1 false) #12
  br label %318

87:                                               ; preds = %67
  %88 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1090519040) #15, !srcloc !18
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %318

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 10, i32 5
  %93 = tail call ptr @llvm.thread.pointer() #12
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %95 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %94) #16, !srcloc !19
  %96 = and i32 %95, -13
  %97 = or i32 %96, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %98 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %92, i32 noundef 12) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 0, i32 -14
  br label %318

101:                                              ; preds = %67
  %102 = tail call ptr @llvm.thread.pointer() #12
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 3
  %104 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %103) #16, !srcloc !19
  %105 = and i32 %104, -13
  %106 = or i32 %105, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %107 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %8, i32 -1090519041) #12, !srcloc !26
  %108 = extractvalue { i32, i32 } %107, 0
  %109 = extractvalue { i32, i32 } %107, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %110 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 10
  store i32 %109, ptr %110, align 8
  br label %318

111:                                              ; preds = %67
  %112 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 10
  %113 = load i32, ptr %112, align 8
  %114 = tail call ptr @llvm.thread.pointer() #12
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 3
  %116 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %115) #16, !srcloc !19
  %117 = and i32 %116, -13
  %118 = or i32 %117, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %119 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %113, i32 -1090519041) #12, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %318

120:                                              ; preds = %67
  %121 = tail call ptr @llvm.thread.pointer() #12
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 3
  %123 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %122) #16, !srcloc !19
  %124 = and i32 %123, -13
  %125 = or i32 %124, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %126 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 131328, i32 -1090519041) #12, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %318

127:                                              ; preds = %67
  %128 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 11
  %129 = load i32, ptr %128, align 8
  %130 = trunc i32 %129 to i8
  %131 = tail call ptr @llvm.thread.pointer() #12
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %133 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %132) #16, !srcloc !19
  %134 = and i32 %133, -13
  %135 = or i32 %134, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %136 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i8 %130, i32 -1090519041) #12, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %133) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %318

137:                                              ; preds = %67
  %138 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 12
  %139 = load i32, ptr %138, align 4
  %140 = trunc i32 %139 to i8
  %141 = tail call ptr @llvm.thread.pointer() #12
  %142 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 3
  %143 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %142) #16, !srcloc !19
  %144 = and i32 %143, -13
  %145 = or i32 %144, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %146 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i8 %140, i32 -1090519041) #12, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %143) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %318

147:                                              ; preds = %67
  %148 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 9
  %149 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 11
  %150 = load i32, ptr %149, align 8
  %151 = mul i32 %150, 36
  %152 = icmp slt i32 %151, 0
  %153 = load i1, ptr @check_copy_size.__already_done, align 1
  %154 = xor i1 %153, true
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %157, !prof !31

156:                                              ; preds = %147
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %157

157:                                              ; preds = %156, %147
  br i1 %152, label %318, label %158, !prof !31

158:                                              ; preds = %157
  %159 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %151, i32 -1090519040) #15, !srcloc !24
  %160 = extractvalue { i32, i32 } %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %169, !prof !25

162:                                              ; preds = %158
  %163 = tail call ptr @llvm.thread.pointer() #12
  %164 = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 3
  %165 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %164) #16, !srcloc !19
  %166 = and i32 %165, -13
  %167 = or i32 %166, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %167) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %168 = tail call i32 @arm_copy_from_user(ptr noundef %148, ptr noundef %8, i32 noundef %151) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %169

169:                                              ; preds = %162, %158
  %170 = phi i32 [ %168, %162 ], [ %151, %158 ]
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177, !prof !25

172:                                              ; preds = %169
  %173 = load i32, ptr %149, align 8
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %318

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 26
  br label %180

177:                                              ; preds = %169
  %178 = sub i32 %151, %170
  %179 = getelementptr i8, ptr %148, i32 %178
  tail call void @llvm.memset.p0.i32(ptr align 1 %179, i8 0, i32 %170, i1 false) #12
  br label %318

180:                                              ; preds = %214, %175
  %181 = phi i32 [ 0, %175 ], [ %218, %214 ]
  %182 = load ptr, ptr %176, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %190, label %184

184:                                              ; preds = %180
  %185 = getelementptr %struct.joydev, ptr %7, i32 0, i32 16, i32 %181
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = getelementptr %struct.input_absinfo, ptr %182, i32 %187
  %189 = load i32, ptr %188, align 4
  br label %190

190:                                              ; preds = %184, %180
  %191 = phi i32 [ %189, %184 ], [ 0, %180 ]
  %192 = getelementptr %struct.joydev, ptr %7, i32 0, i32 9, i32 %181
  %193 = getelementptr %struct.joydev, ptr %7, i32 0, i32 9, i32 %181, i32 2
  %194 = load i16, ptr %193, align 2
  switch i16 %194, label %214 [
    i16 0, label %210
    i16 1, label %195
  ]

195:                                              ; preds = %190
  %196 = load i32, ptr %192, align 4
  %197 = icmp slt i32 %196, %191
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = getelementptr [8 x i32], ptr %192, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = icmp sgt i32 %200, %191
  br i1 %201, label %210, label %202

202:                                              ; preds = %198, %195
  %203 = phi i32 [ 3, %198 ], [ 2, %195 ]
  %204 = phi i32 [ %200, %198 ], [ %196, %195 ]
  %205 = getelementptr [8 x i32], ptr %192, i32 0, i32 %203
  %206 = load i32, ptr %205, align 4
  %207 = sub i32 %191, %204
  %208 = mul i32 %206, %207
  %209 = ashr i32 %208, 14
  br label %210

210:                                              ; preds = %202, %198, %190
  %211 = phi i32 [ %191, %190 ], [ 0, %198 ], [ %209, %202 ]
  %212 = tail call i32 @llvm.smax.i32(i32 %211, i32 -32767) #12
  %213 = tail call i32 @llvm.smin.i32(i32 %212, i32 32767) #12
  br label %214

214:                                              ; preds = %210, %190
  %215 = phi i32 [ %213, %210 ], [ 0, %190 ]
  %216 = trunc i32 %215 to i16
  %217 = getelementptr %struct.joydev, ptr %7, i32 0, i32 17, i32 %181
  store i16 %216, ptr %217, align 2
  %218 = add nuw nsw i32 %181, 1
  %219 = load i32, ptr %149, align 8
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %180, label %318

221:                                              ; preds = %67
  %222 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 9
  %223 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 11
  %224 = load i32, ptr %223, align 8
  %225 = mul i32 %224, 36
  %226 = icmp slt i32 %225, 0
  %227 = load i1, ptr @check_copy_size.__already_done, align 1
  %228 = xor i1 %227, true
  %229 = select i1 %226, i1 %228, i1 false
  br i1 %229, label %230, label %231, !prof !31

230:                                              ; preds = %221
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %231

231:                                              ; preds = %230, %221
  br i1 %226, label %318, label %232, !prof !31

232:                                              ; preds = %231
  %233 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %225, i32 -1090519040) #15, !srcloc !18
  %234 = extractvalue { i32, i32 } %233, 0
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = tail call ptr @llvm.thread.pointer() #12
  %238 = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 3
  %239 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %238) #16, !srcloc !19
  %240 = and i32 %239, -13
  %241 = or i32 %240, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %241) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %242 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %222, i32 noundef %225) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %239) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %243

243:                                              ; preds = %236, %232
  %244 = phi i32 [ %242, %236 ], [ %225, %232 ]
  %245 = icmp eq i32 %244, 0
  %246 = select i1 %245, i32 0, i32 -14
  br label %318

247:                                              ; preds = %67
  %248 = and i32 %1, -1073676289
  switch i32 %248, label %318 [
    i32 1073769009, label %249
    i32 -2147456462, label %253
    i32 1073769011, label %272
    i32 -2147456460, label %276
    i32 -2147456493, label %295
  ]

249:                                              ; preds = %247
  %250 = lshr i32 %1, 16
  %251 = and i32 %250, 16383
  %252 = tail call fastcc i32 @joydev_handle_JSIOCSAXMAP(ptr noundef %7, ptr noundef %8, i32 noundef %251) #12
  br label %318

253:                                              ; preds = %247
  %254 = lshr i32 %1, 16
  %255 = and i32 %254, 16383
  %256 = tail call i32 @llvm.umin.i32(i32 %255, i32 64) #12
  %257 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %256, i32 -1090519040) #15, !srcloc !18
  %258 = extractvalue { i32, i32 } %257, 0
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 16
  %262 = tail call ptr @llvm.thread.pointer() #12
  %263 = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 3
  %264 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %263) #16, !srcloc !19
  %265 = and i32 %264, -13
  %266 = or i32 %265, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %266) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %267 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %261, i32 noundef %256) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %264) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %268

268:                                              ; preds = %260, %253
  %269 = phi i32 [ %267, %260 ], [ %256, %253 ]
  %270 = icmp eq i32 %269, 0
  %271 = select i1 %270, i32 %256, i32 -14
  br label %318

272:                                              ; preds = %247
  %273 = lshr i32 %1, 16
  %274 = and i32 %273, 16383
  %275 = tail call fastcc i32 @joydev_handle_JSIOCSBTNMAP(ptr noundef %7, ptr noundef %8, i32 noundef %274) #12
  br label %318

276:                                              ; preds = %247
  %277 = lshr i32 %1, 16
  %278 = and i32 %277, 16383
  %279 = tail call i32 @llvm.umin.i32(i32 %278, i32 1024) #12
  %280 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %279, i32 -1090519040) #15, !srcloc !18
  %281 = extractvalue { i32, i32 } %280, 0
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %276
  %284 = getelementptr inbounds %struct.joydev, ptr %7, i32 0, i32 14
  %285 = tail call ptr @llvm.thread.pointer() #12
  %286 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 3
  %287 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %286) #16, !srcloc !19
  %288 = and i32 %287, -13
  %289 = or i32 %288, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %289) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %290 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %284, i32 noundef %279) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %287) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %291

291:                                              ; preds = %283, %276
  %292 = phi i32 [ %290, %283 ], [ %279, %276 ]
  %293 = icmp eq i32 %292, 0
  %294 = select i1 %293, i32 %279, i32 -14
  br label %318

295:                                              ; preds = %247
  %296 = load ptr, ptr %69, align 8
  %297 = icmp eq ptr %296, null
  br i1 %297, label %318, label %298

298:                                              ; preds = %295
  %299 = lshr i32 %1, 16
  %300 = and i32 %299, 16383
  %301 = tail call i32 @strlen(ptr noundef nonnull %296) #12
  %302 = add i32 %301, 1
  %303 = tail call i32 @llvm.umin.i32(i32 %300, i32 %302) #12
  %304 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %303, i32 -1090519040) #15, !srcloc !18
  %305 = extractvalue { i32, i32 } %304, 0
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %298
  %308 = tail call ptr @llvm.thread.pointer() #12
  %309 = getelementptr inbounds %struct.thread_info, ptr %308, i32 0, i32 3
  %310 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %309) #16, !srcloc !19
  %311 = and i32 %310, -13
  %312 = or i32 %311, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %312) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  %313 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %296, i32 noundef %303) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %310) #12, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !21
  br label %314

314:                                              ; preds = %307, %298
  %315 = phi i32 [ %313, %307 ], [ %303, %298 ]
  %316 = icmp eq i32 %315, 0
  %317 = select i1 %316, i32 %303, i32 -14
  br label %318

318:                                              ; preds = %314, %295, %291, %272, %268, %249, %247, %243, %231, %214, %177, %172, %157, %137, %127, %120, %111, %101, %91, %87, %83, %75, %57, %53, %49, %41, %27, %17, %12
  %319 = phi i32 [ %35, %27 ], [ %24, %17 ], [ -19, %12 ], [ 0, %41 ], [ %275, %272 ], [ %252, %249 ], [ %146, %137 ], [ %136, %127 ], [ %126, %120 ], [ %119, %111 ], [ %108, %101 ], [ 0, %295 ], [ -22, %247 ], [ 0, %75 ], [ -14, %83 ], [ -14, %87 ], [ -14, %157 ], [ -14, %177 ], [ %100, %91 ], [ 0, %172 ], [ -14, %231 ], [ %246, %243 ], [ %271, %268 ], [ %294, %291 ], [ %317, %314 ], [ -14, %49 ], [ -14, %53 ], [ %66, %57 ], [ 0, %214 ]
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %320

320:                                              ; preds = %318, %3
  %321 = phi i32 [ %319, %318 ], [ %10, %3 ]
  ret i32 %321
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @joydev_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -560
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 544) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %99, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.joydev_client, ptr %7, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.joydev_client, ptr %7, i32 0, i32 6
  store ptr %5, ptr %11, align 4
  %12 = getelementptr i8, ptr %4, i32 -500
  tail call void @_raw_spin_lock(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.joydev_client, ptr %7, i32 0, i32 7
  %14 = getelementptr i8, ptr %4, i32 -508
  %15 = getelementptr i8, ptr %4, i32 -504
  %16 = load ptr, ptr %15, align 4
  store ptr %14, ptr %13, align 8
  %17 = getelementptr inbounds %struct.joydev_client, ptr %7, i32 0, i32 7, i32 1
  store ptr %16, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  store volatile ptr %13, ptr %16, align 4
  store ptr %13, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %18 = load i16, ptr %12, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %20 = getelementptr i8, ptr %4, i32 -496
  %21 = tail call i32 @mutex_lock_interruptible(ptr noundef %20) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %92

23:                                               ; preds = %9
  %24 = getelementptr i8, ptr %4, i32 60
  %25 = load i8, ptr %24, align 4, !range !15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %87, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %5, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %5, align 8
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %4, i32 -556
  %33 = tail call i32 @input_open_device(ptr noundef %32) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %5, align 8
  %37 = add i32 %36, -1
  store i32 %37, ptr %5, align 8
  br label %87

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %4, i32 2408
  %40 = load i32, ptr %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %4, i32 -544
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 26
  br label %46

46:                                               ; preds = %80, %42
  %47 = phi i32 [ 0, %42 ], [ %84, %80 ]
  %48 = load ptr, ptr %45, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.joydev, ptr %5, i32 0, i32 16, i32 %47
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr %struct.input_absinfo, ptr %48, i32 %53
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i32 [ %55, %50 ], [ 0, %46 ]
  %58 = getelementptr %struct.joydev, ptr %5, i32 0, i32 9, i32 %47
  %59 = getelementptr %struct.joydev, ptr %5, i32 0, i32 9, i32 %47, i32 2
  %60 = load i16, ptr %59, align 2
  switch i16 %60, label %80 [
    i16 0, label %76
    i16 1, label %61
  ]

61:                                               ; preds = %56
  %62 = load i32, ptr %58, align 4
  %63 = icmp slt i32 %62, %57
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr [8 x i32], ptr %58, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, %57
  br i1 %67, label %76, label %68

68:                                               ; preds = %64, %61
  %69 = phi i32 [ 3, %64 ], [ 2, %61 ]
  %70 = phi i32 [ %66, %64 ], [ %62, %61 ]
  %71 = getelementptr [8 x i32], ptr %58, i32 0, i32 %69
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %57, %70
  %74 = mul i32 %72, %73
  %75 = ashr i32 %74, 14
  br label %76

76:                                               ; preds = %68, %64, %56
  %77 = phi i32 [ %57, %56 ], [ 0, %64 ], [ %75, %68 ]
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 -32767) #12
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 32767) #12
  br label %80

80:                                               ; preds = %76, %56
  %81 = phi i32 [ %79, %76 ], [ 0, %56 ]
  %82 = trunc i32 %81 to i16
  %83 = getelementptr %struct.joydev, ptr %5, i32 0, i32 17, i32 %47
  store i16 %82, ptr %83, align 2
  %84 = add nuw nsw i32 %47, 1
  %85 = load i32, ptr %39, align 8
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %46, label %89

87:                                               ; preds = %35, %23
  %88 = phi i32 [ %33, %35 ], [ -19, %23 ]
  tail call void @mutex_unlock(ptr noundef %20) #12
  br label %92

89:                                               ; preds = %80, %38, %27
  tail call void @mutex_unlock(ptr noundef %20) #12
  %90 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %7, ptr %90, align 8
  %91 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #12
  br label %99

92:                                               ; preds = %87, %9
  %93 = phi i32 [ %88, %87 ], [ %21, %9 ]
  tail call void @_raw_spin_lock(ptr noundef %12) #12
  %94 = load ptr, ptr %17, align 4
  %95 = load ptr, ptr %13, align 8
  %96 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  store ptr %94, ptr %96, align 4
  store volatile ptr %95, ptr %94, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %97 = load i16, ptr %12, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  tail call void @synchronize_rcu() #12
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %99

99:                                               ; preds = %92, %89, %2
  %100 = phi i32 [ %93, %92 ], [ 0, %89 ], [ -12, %2 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @joydev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.joydev_client, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.joydev, ptr %6, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.joydev_client, ptr %4, i32 0, i32 7
  %9 = getelementptr inbounds %struct.joydev_client, ptr %4, i32 0, i32 7, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %13 = load i16, ptr %7, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  tail call void @synchronize_rcu() #12
  tail call void @kfree(ptr noundef %4) #12
  %15 = getelementptr inbounds %struct.joydev, ptr %6, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.joydev, ptr %6, i32 0, i32 8
  %17 = load i8, ptr %16, align 4, !range !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i32, ptr %6, align 8
  %21 = add i32 %20, -1
  store i32 %21, ptr %6, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.joydev, ptr %6, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %24) #12
  br label %25

25:                                               ; preds = %23, %19, %2
  tail call void @mutex_unlock(ptr noundef %15) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @joydev_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.joydev_client, ptr %5, i32 0, i32 5
  %7 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #12
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @joydev_handle_JSIOCSAXMAP(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call i32 @llvm.umin.i32(i32 %2, i32 64)
  %5 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %4) #12
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %4, 0
  %9 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  br i1 %8, label %25, label %11

11:                                               ; preds = %7
  %12 = call i32 @llvm.smax.i32(i32 %10, i32 0)
  br label %18

13:                                               ; preds = %3
  %14 = ptrtoint ptr %5 to i32
  br label %39

15:                                               ; preds = %21
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, %4
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ 0, %11 ], [ %16, %15 ]
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %5, i32 %19
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %23, 63
  br i1 %24, label %37, label %15

25:                                               ; preds = %18, %15, %7
  %26 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %26, ptr align 1 %5, i32 %4, i1 false)
  %27 = icmp sgt i32 %10, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %28, %25
  %29 = phi i32 [ %35, %28 ], [ 0, %25 ]
  %30 = trunc i32 %29 to i8
  %31 = getelementptr %struct.joydev, ptr %0, i32 0, i32 16, i32 %29
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr %struct.joydev, ptr %0, i32 0, i32 15, i32 %33
  store i8 %30, ptr %34, align 1
  %35 = add nuw nsw i32 %29, 1
  %36 = icmp eq i32 %35, %10
  br i1 %36, label %37, label %28

37:                                               ; preds = %28, %25, %21
  %38 = phi i32 [ 0, %25 ], [ 0, %28 ], [ -22, %21 ]
  tail call void @kfree(ptr noundef %5) #12
  br label %39

39:                                               ; preds = %37, %13
  %40 = phi i32 [ %14, %13 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @joydev_handle_JSIOCSBTNMAP(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %51

6:                                                ; preds = %3
  %7 = tail call i32 @llvm.umin.i32(i32 %2, i32 1024)
  %8 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %7) #12
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = icmp ult i32 %7, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  br label %33

15:                                               ; preds = %10
  %16 = lshr i32 %7, 1
  %17 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @llvm.smax.i32(i32 %18, i32 0)
  br label %25

20:                                               ; preds = %6
  %21 = ptrtoint ptr %8 to i32
  br label %51

22:                                               ; preds = %28
  %23 = add nuw nsw i32 %26, 1
  %24 = icmp eq i32 %23, %16
  br i1 %24, label %33, label %25

25:                                               ; preds = %22, %15
  %26 = phi i32 [ 0, %15 ], [ %23, %22 ]
  %27 = icmp eq i32 %26, %19
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr i16, ptr %8, i32 %26
  %30 = load i16, ptr %29, align 2
  %31 = add i16 %30, -768
  %32 = icmp ult i16 %31, -512
  br i1 %32, label %49, label %22

33:                                               ; preds = %25, %22, %12
  %34 = phi i32 [ %14, %12 ], [ %18, %22 ], [ %18, %25 ]
  %35 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %35, ptr align 2 %8, i32 %7, i1 false)
  %36 = getelementptr inbounds %struct.joydev, ptr %0, i32 0, i32 12
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %38, %33
  %39 = phi i32 [ %46, %38 ], [ 0, %33 ]
  %40 = trunc i32 %39 to i16
  %41 = getelementptr %struct.joydev, ptr %0, i32 0, i32 14, i32 %39
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, -256
  %45 = getelementptr %struct.joydev, ptr %0, i32 0, i32 13, i32 %44
  store i16 %40, ptr %45, align 2
  %46 = add nuw nsw i32 %39, 1
  %47 = load i32, ptr %36, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %38, label %49

49:                                               ; preds = %38, %33, %28
  %50 = phi i32 [ 0, %33 ], [ 0, %38 ], [ -22, %28 ]
  tail call void @kfree(ptr noundef %8) #12
  br label %51

51:                                               ; preds = %49, %20, %3
  %52 = phi i32 [ %21, %20 ], [ %50, %49 ], [ -22, %3 ]
  ret i32 %52
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i64 2149018547}
!9 = !{i64 2148917396}
!10 = !{i64 2148913220}
!11 = !{i64 2148913295, i64 2148913322, i64 2148913369, i64 2148913391, i64 2148913419, i64 2148913439}
!12 = !{i64 2148940399}
!13 = !{i64 2149018764}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
!16 = !{i64 425509}
!17 = !{i64 2148941540}
!18 = !{i64 2151642962, i64 2151642987}
!19 = !{i64 4138496}
!20 = !{i64 4138693}
!21 = !{i64 2151623972}
!22 = !{i64 2152812297, i64 2152812577, i64 2152812911, i64 2152813245}
!23 = !{i64 2152821312, i64 2152821592, i64 2152821926, i64 2152822260}
!24 = !{i64 2151642384, i64 2151642409}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2152750766, i64 2152751046, i64 2152751380, i64 2152751714}
!27 = !{i64 2152759777, i64 2152760057, i64 2152760391, i64 2152760725}
!28 = !{i64 2152768722, i64 2152769002, i64 2152769336, i64 2152769670}
!29 = !{i64 2152774023, i64 2152774303, i64 2152774637, i64 2152774971}
!30 = !{i64 2152782952, i64 2152783232, i64 2152783566, i64 2152783900}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2149177774}
