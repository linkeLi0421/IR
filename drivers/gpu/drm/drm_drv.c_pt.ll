; ModuleID = '/llk/IR/drivers/gpu/drm/drm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_put_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_put_dev\22\09\09\09\09\09"
module asm "__kstrtabns_drm_put_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_enter\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_exit\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_unplug:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_unplug\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_unplug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_drm_dev_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_drm_dev_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___devm_drm_dev_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_get:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_get\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_put\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_register\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dev_set_unique:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dev_set_unique\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dev_set_unique:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.srcu_data = type { [2 x i32], [2 x i32], [48 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [56 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.66, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.66 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.72 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__UNIQUE_ID_author264 = internal constant [65 x i8] c"drm.author=Gareth Hughes, Leif Delgass, Jos\C3\A9 Fonseca, Jon Smirl\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [41 x i8] c"drm.description=DRM shared core routines\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [29 x i8] c"drm.file=drivers/gpu/drm/drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [38 x i8] c"drm.license=GPL and additional rights\00", section ".modinfo", align 1
@drm_minor_lock = internal global %struct.spinlock zeroinitializer, align 4
@drm_minors_idr = internal global %struct.idr zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cleanup called no dev\0A\00", align 1
@__kstrtab_drm_put_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_put_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_put_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_put_dev to i32), ptr @__kstrtab_drm_put_dev, ptr @__kstrtabns_drm_put_dev }, section "___ksymtab+drm_put_dev", align 4
@drm_unplug_srcu = internal global %struct.srcu_struct { [1 x %struct.srcu_node] zeroinitializer, [2 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @drm_unplug_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @drm_unplug_srcu, i64 176), ptr getelementptr (i8, ptr @drm_unplug_srcu, i64 176) }, ptr null }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, %struct.lockdep_map zeroinitializer }, align 4
@__kstrtab_drm_dev_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_enter to i32), ptr @__kstrtab_drm_dev_enter, ptr @__kstrtabns_drm_dev_enter }, section "___ksymtab+drm_dev_enter", align 4
@__kstrtab_drm_dev_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_exit to i32), ptr @__kstrtab_drm_dev_exit, ptr @__kstrtabns_drm_dev_exit }, section "___ksymtab+drm_dev_exit", align 4
@__kstrtab_drm_dev_unplug = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_unplug = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_unplug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_unplug to i32), ptr @__kstrtab_drm_dev_unplug, ptr @__kstrtabns_drm_dev_unplug }, section "___ksymtab+drm_dev_unplug", align 4
@__kstrtab___devm_drm_dev_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_drm_dev_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_drm_dev_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_drm_dev_alloc to i32), ptr @__kstrtab___devm_drm_dev_alloc, ptr @__kstrtabns___devm_drm_dev_alloc }, section "___ksymtab+__devm_drm_dev_alloc", align 4
@__kstrtab_drm_dev_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_alloc to i32), ptr @__kstrtab_drm_dev_alloc, ptr @__kstrtabns_drm_dev_alloc }, section "___ksymtab+drm_dev_alloc", align 4
@__kstrtab_drm_dev_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_get = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_get to i32), ptr @__kstrtab_drm_dev_get, ptr @__kstrtabns_drm_dev_get }, section "___ksymtab+drm_dev_get", align 4
@__kstrtab_drm_dev_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_put = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_put to i32), ptr @__kstrtab_drm_dev_put, ptr @__kstrtabns_drm_dev_put }, section "___ksymtab+drm_dev_put", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"drivers/gpu/drm/drm_drv.c\00", align 1
@drm_global_mutex = external dso_local global %struct.mutex, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"\016[drm] Initialized %s %d.%d.%d %s for %s on minor %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"virtual device\00", align 1
@__kstrtab_drm_dev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_register to i32), ptr @__kstrtab_drm_dev_register, ptr @__kstrtabns_drm_dev_register }, section "___ksymtab+drm_dev_register", align 4
@__kstrtab_drm_dev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_unregister to i32), ptr @__kstrtab_drm_dev_unregister, ptr @__kstrtabns_drm_dev_unregister }, section "___ksymtab+drm_dev_unregister", align 4
@__kstrtab_drm_dev_set_unique = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dev_set_unique = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dev_set_unique = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dev_set_unique to i32), ptr @__kstrtab_drm_dev_set_unique, ptr @__kstrtabns_drm_dev_set_unique }, section "___ksymtab+drm_dev_set_unique", align 4
@__initcall__kmod_drm__268_1076_drm_core_init6 = internal global ptr @drm_core_init, section ".initcall6.init", align 4
@__exitcall_drm_core_exit = internal global ptr @drm_core_exit, section ".exitcall.exit", align 4
@drm_unplug_srcu_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@drm_core_init_complete = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"DRM core is not initialized\0A\00", align 1
@drm_dev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"&dev->struct_mutex\00", align 1
@drm_dev_init.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"&dev->filelist_mutex\00", align 1
@drm_dev_init.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"&dev->clientlist_mutex\00", align 1
@drm_dev_init.__key.12 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"&dev->master_mutex\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"drm_dev_init_release\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Cannot allocate anonymous inode: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"Cannot initialize graphics execution manager (GEM)\0A\00", align 1
@drm_fs_mnt = internal global ptr null, align 4
@drm_fs_cnt = internal global i32 0, align 4
@drm_fs_type = internal global %struct.file_system_type { ptr @.str.18, i32 0, ptr @drm_fs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"Cannot mount pseudo fs: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"drm_minor_alloc_release\00", align 1
@drm_debugfs_root = internal unnamed_addr global ptr null, align 4
@.str.20 = private unnamed_addr constant [50 x i8] c"DRM: Failed to initialize /sys/kernel/debug/dri.\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"new minor registered %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"controlD%d\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Cannot create DRM class: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"dri\00", align 1
@drm_stub_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @drm_stub_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"Initialized\0A\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_drm_core_exit, ptr @__initcall__kmod_drm__268_1076_drm_core_init6, ptr @__ksymtab___devm_drm_dev_alloc, ptr @__ksymtab_drm_dev_alloc, ptr @__ksymtab_drm_dev_enter, ptr @__ksymtab_drm_dev_exit, ptr @__ksymtab_drm_dev_get, ptr @__ksymtab_drm_dev_put, ptr @__ksymtab_drm_dev_register, ptr @__ksymtab_drm_dev_set_unique, ptr @__ksymtab_drm_dev_unplug, ptr @__ksymtab_drm_dev_unregister, ptr @__ksymtab_drm_put_dev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_minor_acquire(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @drm_minor_lock) #7
  %3 = tail call ptr @idr_find(ptr noundef nonnull @drm_minors_idr, i32 noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #7, !srcloc !9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #7, !srcloc !10
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !11

14:                                               ; preds = %9
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18, !prof !12

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 2, %9 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef %19) #7
  br label %20

20:                                               ; preds = %18, %14, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %2) #7
  %21 = load ptr, ptr %6, align 4
  %22 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @drm_unplug_srcu) #7
  %23 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 11
  %24 = load i8, ptr %23, align 4, !range !13
  %25 = icmp ugt i32 %22, 1
  %26 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %20
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #7
  br label %30

30:                                               ; preds = %29, %20
  %31 = icmp eq i8 %24, 0
  tail call void @__srcu_read_unlock(ptr noundef nonnull @drm_unplug_srcu, i32 noundef %22) #7
  br i1 %31, label %54, label %33

32:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %2) #7
  br label %54

33:                                               ; preds = %30
  %34 = load ptr, ptr %6, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #7, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #7, !srcloc !15
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %54, label %43, !prof !12

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #7
  br label %54

44:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %45 = getelementptr %struct.drm_device, ptr %34, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.drm_driver, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void %48(ptr noundef nonnull %34) #7
  br label %51

51:                                               ; preds = %50, %44
  tail call void @drm_managed_release(ptr noundef nonnull %34) #7
  %52 = getelementptr %struct.drm_device, ptr %34, i32 0, i32 3, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %53) #7
  br label %54

54:                                               ; preds = %51, %43, %41, %33, %32, %30
  %55 = phi ptr [ inttoptr (i32 -19 to ptr), %32 ], [ %3, %30 ], [ inttoptr (i32 -19 to ptr), %33 ], [ inttoptr (i32 -19 to ptr), %41 ], [ inttoptr (i32 -19 to ptr), %43 ], [ inttoptr (i32 -19 to ptr), %51 ]
  ret ptr %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dev_get(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !10
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !11

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #7
  br label %14

14:                                               ; preds = %12, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dev_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !15
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %21, label %10, !prof !12

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #7
  br label %21

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %12 = getelementptr %struct.drm_device, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef nonnull %0) #7
  br label %18

18:                                               ; preds = %17, %11
  tail call void @drm_managed_release(ptr noundef nonnull %0) #7
  %19 = getelementptr %struct.drm_device, ptr %0, i32 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #7
  br label %21

21:                                               ; preds = %18, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_minor_release(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #7, !srcloc !15
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %23, label %12, !prof !12

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #7
  br label %23

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %14 = getelementptr %struct.drm_device, ptr %3, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_driver, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void %17(ptr noundef nonnull %3) #7
  br label %20

20:                                               ; preds = %19, %13
  tail call void @drm_managed_release(ptr noundef nonnull %3) #7
  %21 = getelementptr %struct.drm_device, ptr %3, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #7
  br label %23

23:                                               ; preds = %20, %12, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_put_dev(ptr noundef %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %22

4:                                                ; preds = %1
  tail call void @drm_dev_unregister(ptr noundef nonnull %0)
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #7, !srcloc !9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #7, !srcloc !15
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %22, label %11, !prof !12

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #7
  br label %22

12:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %13 = getelementptr %struct.drm_device, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef nonnull %0) #7
  br label %19

19:                                               ; preds = %18, %12
  tail call void @drm_managed_release(ptr noundef nonnull %0) #7
  %20 = getelementptr %struct.drm_device, ptr %0, i32 0, i32 3, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #7
  br label %22

22:                                               ; preds = %19, %11, %9, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dev_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %5, 67108864
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 67108864
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @drm_lastclose(ptr noundef %0) #7
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 8
  store i8 0, ptr %13, align 4
  tail call void @drm_client_dev_unregister(ptr noundef %0) #7
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 24
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %6, align 4
  %18 = and i32 %16, 2
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  tail call void @drm_modeset_unregister_all(ptr noundef %0) #7
  %22 = load ptr, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi ptr [ %22, %21 ], [ %14, %12 ]
  %25 = getelementptr inbounds %struct.drm_driver, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef %0) #7
  br label %29

29:                                               ; preds = %28, %23
  tail call void @drm_legacy_pci_agp_destroy(ptr noundef %0) #7
  tail call void @drm_legacy_rmmaps(ptr noundef %0) #7
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.drm_driver, ptr %30, i32 0, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %6, align 4
  %34 = and i32 %32, 2
  %35 = and i32 %34, %33
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %39, align 4
  %43 = add i32 %42, 64
  %44 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.22, i32 noundef %43) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.drm_minor, ptr %39, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.kobject, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void @sysfs_remove_link(ptr noundef %50, ptr noundef nonnull %44) #7
  tail call void @kfree(ptr noundef nonnull %44) #7
  br label %51

51:                                               ; preds = %46, %41, %37, %29
  %52 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.drm_minor, ptr %53, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.kobject, ptr %57, i32 0, i32 7
  %59 = load i8, ptr %58, align 8
  %60 = and i8 %59, 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @drm_minor_lock) #7
  %64 = load i32, ptr %53, align 4
  %65 = tail call ptr @idr_replace(ptr noundef nonnull @drm_minors_idr, ptr noundef null, i32 noundef %64) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %63) #7
  %66 = load ptr, ptr %56, align 4
  tail call void @device_del(ptr noundef %66) #7
  %67 = load ptr, ptr %56, align 4
  %68 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  store ptr null, ptr %68, align 8
  tail call void @drm_debugfs_cleanup(ptr noundef nonnull %53) #7
  br label %69

69:                                               ; preds = %62, %55, %51
  %70 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %87, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.drm_minor, ptr %71, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.kobject, ptr %75, i32 0, i32 7
  %77 = load i8, ptr %76, align 8
  %78 = and i8 %77, 2
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @drm_minor_lock) #7
  %82 = load i32, ptr %71, align 4
  %83 = tail call ptr @idr_replace(ptr noundef nonnull @drm_minors_idr, ptr noundef null, i32 noundef %82) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %81) #7
  %84 = load ptr, ptr %74, align 4
  tail call void @device_del(ptr noundef %84) #7
  %85 = load ptr, ptr %74, align 4
  %86 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 8
  store ptr null, ptr %86, align 8
  tail call void @drm_debugfs_cleanup(ptr noundef nonnull %71) #7
  br label %87

87:                                               ; preds = %80, %73, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_dev_enter(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @drm_unplug_srcu) #7
  store i32 %3, ptr %1, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 11
  %5 = load i8, ptr %4, align 4, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = icmp ugt i32 %3, 1
  %9 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %7
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #7
  br label %13

13:                                               ; preds = %12, %7
  tail call void @__srcu_read_unlock(ptr noundef nonnull @drm_unplug_srcu, i32 noundef %3) #7
  br label %14

14:                                               ; preds = %13, %2
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dev_exit(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 1
  %3 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %1
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %1
  tail call void @__srcu_read_unlock(ptr noundef nonnull @drm_unplug_srcu, i32 noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dev_unplug(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 11
  store i8 1, ptr %2, align 4
  tail call void @synchronize_srcu(ptr noundef nonnull @drm_unplug_srcu) #7
  tail call void @drm_dev_unregister(ptr noundef %0)
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  tail call void @unmap_mapping_range(ptr noundef %6, i64 noundef 0, i64 noundef 0, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_drm_dev_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %5, i32 %3
  %9 = tail call fastcc i32 @drm_dev_init(ptr noundef %8, ptr noundef %1, ptr noundef %0) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_drm_dev_init_release, ptr noundef %8) #7
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq ptr %8, null
  %15 = or i1 %14, %13
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #7, !srcloc !9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #7, !srcloc !15
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %35, label %23, !prof !12

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #7
  br label %35

24:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %25 = getelementptr %struct.drm_device, ptr %8, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_driver, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void %28(ptr noundef nonnull %8) #7
  br label %31

31:                                               ; preds = %30, %24
  tail call void @drm_managed_release(ptr noundef nonnull %8) #7
  %32 = getelementptr %struct.drm_device, ptr %8, i32 0, i32 3, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %33) #7
  br label %35

34:                                               ; preds = %11
  br i1 %13, label %38, label %35

35:                                               ; preds = %34, %31, %23, %21, %7
  %36 = phi i32 [ %12, %34 ], [ %12, %31 ], [ %12, %23 ], [ %12, %21 ], [ %9, %7 ]
  tail call void @kfree(ptr noundef nonnull %5) #7
  %37 = inttoptr i32 %36 to ptr
  br label %39

38:                                               ; preds = %34
  tail call void @drmm_add_final_kfree(ptr noundef %8, ptr noundef nonnull %5) #7
  br label %39

39:                                               ; preds = %38, %35, %4
  %40 = phi ptr [ %37, %35 ], [ %5, %38 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drmm_add_final_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_dev_alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1012) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @drm_dev_init(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #7
  %10 = inttoptr i32 %7 to ptr
  br label %12

11:                                               ; preds = %6
  tail call void @drmm_add_final_kfree(ptr noundef nonnull %4, ptr noundef nonnull %4) #7
  br label %12

12:                                               ; preds = %11, %9, %2
  %13 = phi ptr [ %10, %9 ], [ %4, %11 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_dev_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i1, ptr @drm_core_init_complete, align 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %93

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 593, i32 noundef 9, ptr noundef null) #7
  br label %93

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 1
  store volatile i32 1, ptr %10, align 4
  %11 = tail call ptr @get_device(ptr noundef nonnull %2) #7
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  store i32 -1, ptr %17, align 4
  tail call void @drm_legacy_init_members(ptr noundef %0) #7
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 18
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 18, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 19
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 19, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 21
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 21, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 27
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 27, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 28
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef nonnull @drm_dev_init.__key) #7
  %28 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.9, ptr noundef nonnull @drm_dev_init.__key.8) #7
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str.11, ptr noundef nonnull @drm_dev_init.__key.10) #7
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.13, ptr noundef nonnull @drm_dev_init.__key.12) #7
  %31 = tail call i32 @__drmm_add_action(ptr noundef %0, ptr noundef nonnull @drm_dev_init_release, ptr noundef null, ptr noundef nonnull @.str.14) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %9
  %34 = tail call i32 @simple_pin_fs(ptr noundef nonnull @drm_fs_type, ptr noundef nonnull @drm_fs_mnt, ptr noundef nonnull @drm_fs_cnt) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %34) #7
  %37 = inttoptr i32 %34 to ptr
  br label %45

38:                                               ; preds = %33
  %39 = load ptr, ptr @drm_fs_mnt, align 4
  %40 = getelementptr inbounds %struct.vfsmount, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr @alloc_anon_inode(ptr noundef %41) #7
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @simple_release_fs(ptr noundef nonnull @drm_fs_mnt, ptr noundef nonnull @drm_fs_cnt) #7
  br label %45

45:                                               ; preds = %44, %38, %36
  %46 = phi ptr [ %37, %36 ], [ %42, %44 ], [ %42, %38 ]
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = ptrtoint ptr %46 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %49) #7
  br label %91

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 12
  store ptr %46, ptr %51, align 4
  %52 = load ptr, ptr %13, align 4
  %53 = getelementptr inbounds %struct.drm_driver, ptr %52, i32 0, i32 24
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %17, align 4
  %56 = and i32 %54, 8
  %57 = and i32 %56, %55
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = tail call fastcc i32 @drm_minor_alloc(ptr noundef %0, i32 noundef 2)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %59, %50
  %63 = tail call fastcc i32 @drm_minor_alloc(ptr noundef %0, i32 noundef 0)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 43
  %67 = tail call i32 @drm_ht_create(ptr noundef %66, i32 noundef 12) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  tail call void @drm_legacy_ctxbitmap_init(ptr noundef %0) #7
  %70 = load ptr, ptr %13, align 4
  %71 = getelementptr inbounds %struct.drm_driver, ptr %70, i32 0, i32 24
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %17, align 4
  %74 = and i32 %72, 1
  %75 = and i32 %74, %73
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = tail call i32 @drm_gem_init(ptr noundef %0) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #7
  br label %91

81:                                               ; preds = %77, %69
  %82 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load ptr, ptr %2, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi ptr [ %86, %85 ], [ %83, %81 ]
  %89 = tail call i32 @drm_dev_set_unique(ptr noundef %0, ptr noundef %88)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87, %80, %65, %62, %59, %48
  %92 = phi i32 [ %49, %48 ], [ %60, %59 ], [ %63, %62 ], [ %67, %65 ], [ %78, %80 ], [ %89, %87 ]
  tail call void @drm_managed_release(ptr noundef %0) #7
  br label %93

93:                                               ; preds = %91, %87, %9, %8, %5
  %94 = phi i32 [ -22, %8 ], [ %92, %91 ], [ -19, %5 ], [ %31, %9 ], [ 0, %87 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dev_register(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @drm_mode_config_validate(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 873, i32 noundef 9, ptr noundef null) #7
  br label %13

13:                                               ; preds = %12, %8
  %14 = tail call zeroext i1 @drm_dev_needs_global_mutex(ptr noundef %0) #7
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef nonnull @drm_global_mutex) #7
  br label %16

16:                                               ; preds = %15, %13
  %17 = tail call fastcc i32 @drm_minor_register(ptr noundef %0, i32 noundef 2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %95

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @drm_minor_register(ptr noundef %0, i32 noundef 0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %95

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.drm_driver, ptr %23, i32 0, i32 24
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %25, 2
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 4
  %37 = add i32 %36, 64
  %38 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.22, i32 noundef %37) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %95, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.drm_minor, ptr %33, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.kobject, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @sysfs_create_link(ptr noundef %44, ptr noundef %42, ptr noundef nonnull %38) #7
  tail call void @kfree(ptr noundef nonnull %38) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %40
  %48 = load ptr, ptr %3, align 4
  br label %49

49:                                               ; preds = %47, %31, %22
  %50 = phi ptr [ %48, %47 ], [ %23, %31 ], [ %23, %22 ]
  %51 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 8
  store i8 1, ptr %51, align 4
  %52 = load ptr, ptr %50, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = tail call i32 %52(ptr noundef %0, i32 noundef %1) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 4
  br label %59

59:                                               ; preds = %57, %49
  %60 = phi ptr [ %58, %57 ], [ %50, %49 ]
  %61 = getelementptr inbounds %struct.drm_driver, ptr %60, i32 0, i32 24
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %26, align 4
  %64 = and i32 %62, 2
  %65 = and i32 %64, %63
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = tail call i32 @drm_modeset_register_all(ptr noundef %0) #7
  br label %69

69:                                               ; preds = %67, %59
  %70 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 21
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 18
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 19
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 20
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 23
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %69
  %84 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load ptr, ptr %81, align 4
  br label %89

89:                                               ; preds = %87, %83, %69
  %90 = phi ptr [ @.str.4, %69 ], [ %88, %87 ], [ %85, %83 ]
  %91 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %92 = load ptr, ptr %91, align 4
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, ptr noundef %79, ptr noundef %90, i32 noundef %93) #10
  br label %155

95:                                               ; preds = %54, %40, %35, %19, %16
  %96 = phi i32 [ %17, %16 ], [ %20, %19 ], [ %45, %40 ], [ %55, %54 ], [ -12, %35 ]
  %97 = load ptr, ptr %3, align 4
  %98 = getelementptr inbounds %struct.drm_driver, ptr %97, i32 0, i32 24
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %99, 2
  %103 = and i32 %102, %101
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %119

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %107, align 4
  %111 = add i32 %110, 64
  %112 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.22, i32 noundef %111) #7
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.drm_minor, ptr %107, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.kobject, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  tail call void @sysfs_remove_link(ptr noundef %118, ptr noundef nonnull %112) #7
  tail call void @kfree(ptr noundef nonnull %112) #7
  br label %119

119:                                              ; preds = %114, %109, %105, %95
  %120 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %137, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.drm_minor, ptr %121, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.kobject, ptr %125, i32 0, i32 7
  %127 = load i8, ptr %126, align 8
  %128 = and i8 %127, 2
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @drm_minor_lock) #7
  %132 = load i32, ptr %121, align 4
  %133 = tail call ptr @idr_replace(ptr noundef nonnull @drm_minors_idr, ptr noundef null, i32 noundef %132) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %131) #7
  %134 = load ptr, ptr %124, align 4
  tail call void @device_del(ptr noundef %134) #7
  %135 = load ptr, ptr %124, align 4
  %136 = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 8
  store ptr null, ptr %136, align 8
  tail call void @drm_debugfs_cleanup(ptr noundef nonnull %121) #7
  br label %137

137:                                              ; preds = %130, %123, %119
  %138 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 7
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.drm_minor, ptr %139, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.kobject, ptr %143, i32 0, i32 7
  %145 = load i8, ptr %144, align 8
  %146 = and i8 %145, 2
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %141
  %149 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @drm_minor_lock) #7
  %150 = load i32, ptr %139, align 4
  %151 = tail call ptr @idr_replace(ptr noundef nonnull @drm_minors_idr, ptr noundef null, i32 noundef %150) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %149) #7
  %152 = load ptr, ptr %142, align 4
  tail call void @device_del(ptr noundef %152) #7
  %153 = load ptr, ptr %142, align 4
  %154 = getelementptr inbounds %struct.device, ptr %153, i32 0, i32 8
  store ptr null, ptr %154, align 8
  tail call void @drm_debugfs_cleanup(ptr noundef nonnull %139) #7
  br label %155

155:                                              ; preds = %148, %141, %137, %89
  %156 = phi i32 [ 0, %89 ], [ %96, %137 ], [ %96, %141 ], [ %96, %148 ]
  %157 = tail call zeroext i1 @drm_dev_needs_global_mutex(ptr noundef %0) #7
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  tail call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #7
  br label %159

159:                                              ; preds = %158, %155
  ret i32 %156
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_needs_global_mutex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_minor_register(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  switch i32 %1, label %7 [
    i32 0, label %3
    i32 2, label %5
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  br label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 7
  br label %8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %6, %5 ], [ %4, %3 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 4
  %14 = load ptr, ptr @drm_debugfs_root, align 4
  %15 = tail call i32 @drm_debugfs_init(ptr noundef nonnull %10, i32 noundef %13, ptr noundef %14) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #7
  br label %28

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.drm_minor, ptr %10, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @device_add(ptr noundef %20) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @drm_minor_lock) #7
  %25 = load i32, ptr %10, align 4
  %26 = tail call ptr @idr_replace(ptr noundef nonnull @drm_minors_idr, ptr noundef nonnull %10, i32 noundef %25) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %24) #7
  %27 = load i32, ptr %10, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %27) #7
  br label %30

28:                                               ; preds = %18, %17
  %29 = phi i32 [ %15, %17 ], [ %21, %18 ]
  tail call void @drm_debugfs_cleanup(ptr noundef nonnull %10) #7
  br label %30

30:                                               ; preds = %28, %23, %8
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ 0, %8 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_register_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_lastclose(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_client_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unregister_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_pci_agp_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_rmmaps(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dev_set_unique(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  tail call void @drmm_kfree(ptr noundef %0, ptr noundef %4) #7
  %5 = tail call ptr @drmm_kstrdup(ptr noundef %0, ptr noundef %1, i32 noundef 3264) #7
  store ptr %5, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, i32 -12, i32 0
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drmm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drmm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @drm_core_init() #3 section ".init.text" {
  tail call void @drm_connector_ida_init() #7
  store i32 0, ptr @drm_minors_idr, align 4
  store i32 33554436, ptr getelementptr inbounds (%struct.idr, ptr @drm_minors_idr, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.idr, ptr @drm_minors_idr, i32 0, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.idr, ptr @drm_minors_idr, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.idr, ptr @drm_minors_idr, i32 0, i32 2), align 4
  tail call void @drm_memcpy_init_early() #7
  %1 = tail call i32 @drm_sysfs_init() #7
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %1) #7
  br label %9

4:                                                ; preds = %0
  %5 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.24, ptr noundef null) #7
  store ptr %5, ptr @drm_debugfs_root, align 4
  %6 = tail call i32 @__register_chrdev(i32 noundef 226, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.18, ptr noundef nonnull @drm_stub_fops) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i1 true, ptr @drm_core_init_complete, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25) #7
  br label %11

9:                                                ; preds = %4, %3
  %10 = phi i32 [ %1, %3 ], [ %6, %4 ]
  tail call void @drm_core_exit()
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ %10, %9 ], [ 0, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_core_exit() #0 {
  tail call void @__unregister_chrdev(i32 noundef 226, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.18) #7
  %1 = load ptr, ptr @drm_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  tail call void @drm_sysfs_destroy() #7
  tail call void @idr_destroy(ptr noundef nonnull @drm_minors_idr) #7
  tail call void @drm_connector_ida_destroy() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_drm_dev_init_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !15
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %21, label %10, !prof !12

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #7
  br label %21

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %12 = getelementptr %struct.drm_device, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef nonnull %0) #7
  br label %18

18:                                               ; preds = %17, %11
  tail call void @drm_managed_release(ptr noundef nonnull %0) #7
  %19 = getelementptr %struct.drm_device, ptr %0, i32 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #7
  br label %21

21:                                               ; preds = %18, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_init_members(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_dev_init_release(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @drm_legacy_ctxbitmap_cleanup(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 43
  tail call void @drm_ht_remove(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @iput(ptr noundef nonnull %5) #7
  tail call void @simple_release_fs(ptr noundef nonnull @drm_fs_mnt, ptr noundef nonnull @drm_fs_cnt) #7
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @put_device(ptr noundef %10) #7
  store ptr null, ptr %9, align 4
  tail call void @drm_legacy_destroy_members(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_minor_alloc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call noalias ptr @drmm_kmalloc(ptr noundef %0, i32 noundef 48, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  store ptr %0, ptr %7, align 4
  tail call void @idr_preload(i32 noundef 3264) #7
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @drm_minor_lock) #7
  %9 = shl i32 %1, 6
  %10 = add i32 %9, 64
  %11 = tail call i32 @idr_alloc(ptr noundef nonnull @drm_minors_idr, ptr noundef null, i32 noundef %9, i32 noundef %10, i32 noundef 2048) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %8) #7
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #6, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %15 = icmp slt i32 %11, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %5
  store i32 %11, ptr %3, align 4
  %17 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @drm_minor_alloc_release, ptr noundef nonnull %3, ptr noundef nonnull @.str.19) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = tail call ptr @drm_sysfs_minor_alloc(ptr noundef nonnull %3) #7
  %21 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %33

25:                                               ; preds = %19
  switch i32 %1, label %30 [
    i32 0, label %26
    i32 2, label %28
  ]

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  br label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 7
  br label %31

30:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %29, %28 ], [ %27, %26 ]
  store ptr %3, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %23, %16, %5, %2
  %34 = phi i32 [ %24, %23 ], [ 0, %31 ], [ -12, %2 ], [ %11, %5 ], [ %17, %16 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ctxbitmap_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_managed_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ctxbitmap_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_destroy_members(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_ht_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_fs_init_fs_context(ptr noundef %0) #0 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef 16909311) #7
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, i32 -12, i32 0
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_minor_alloc_release(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !12

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 103, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @put_device(ptr noundef %9) #7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @drm_minor_lock) #7
  %11 = load i32, ptr %1, align 4
  %12 = tail call ptr @idr_remove(ptr noundef nonnull @drm_minors_idr, i32 noundef %11) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @drm_minor_lock, i32 noundef %10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_sysfs_minor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_debugfs_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_ida_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_memcpy_init_early() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sysfs_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_stub_open(ptr noundef %0, ptr noundef %1) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  %6 = tail call ptr @drm_minor_acquire(i32 noundef %5)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = ptrtoint ptr %6 to i32
  br label %62

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %16, align 4
  %20 = tail call zeroext i1 @try_module_get(ptr noundef %19) #7
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_driver, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 4
  tail call void @module_put(ptr noundef %33) #7
  br label %34

34:                                               ; preds = %32, %28
  store ptr %26, ptr %29, align 4
  %35 = getelementptr inbounds %struct.file_operations, ptr %26, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %36(ptr noundef %0, ptr noundef %1) #7
  br label %40

40:                                               ; preds = %38, %34, %21, %18, %10
  %41 = phi i32 [ %39, %38 ], [ -19, %21 ], [ 0, %34 ], [ -19, %18 ], [ -19, %10 ]
  %42 = load ptr, ptr %11, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #7, !srcloc !9
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #7, !srcloc !15
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = icmp sgt i32 %47, 0
  br i1 %50, label %62, label %51, !prof !12

51:                                               ; preds = %49
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 3) #7
  br label %62

52:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %53 = getelementptr %struct.drm_device, ptr %42, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.drm_driver, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void %56(ptr noundef nonnull %42) #7
  br label %59

59:                                               ; preds = %58, %52
  tail call void @drm_managed_release(ptr noundef nonnull %42) #7
  %60 = getelementptr %struct.drm_device, ptr %42, i32 0, i32 3, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void @kfree(ptr noundef %61) #7
  br label %62

62:                                               ; preds = %59, %51, %49, %40, %8
  %63 = phi i32 [ %9, %8 ], [ %41, %40 ], [ %41, %49 ], [ %41, %51 ], [ %41, %59 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sysfs_destroy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_ida_destroy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 866655, i64 2148356626, i64 2148356652, i64 2148356699, i64 2148356721, i64 2148356749, i64 2148356769}
!10 = !{i64 2148369499, i64 2148369531, i64 2148369560, i64 2148369594, i64 2148369625, i64 2148369648}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148469721}
!15 = !{i64 2148371856, i64 2148371888, i64 2148371917, i64 2148371951, i64 2148371982, i64 2148372005}
!16 = !{i64 2149795235}
!17 = !{i64 2155168569, i64 2155169058, i64 2155168606, i64 2155168662, i64 2155168696, i64 2155168720, i64 2155168761, i64 2155168782, i64 2155168810, i64 2155168844}
!18 = !{i64 791033}
!19 = !{i64 2151516496}
