; ModuleID = '/llk/IR/drivers/gpu/drm/drm_debugfs_crc.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_debugfs_crc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_add_crc_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_add_crc_entry\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_add_crc_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.71 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@drm_crtc_crc_control_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @crc_control_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @crc_control_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@drm_crtc_crc_data_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @crtc_crc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crtc_crc_poll, ptr null, ptr null, ptr null, i32 0, ptr @crtc_crc_open, ptr null, ptr @crtc_crc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Overflow of CRC buffer, userspace reads too slow.\0A\00", align 1
@__kstrtab_drm_crtc_add_crc_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_add_crc_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_add_crc_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_add_crc_entry to i32), ptr @__kstrtab_drm_crtc_add_crc_entry, ptr @__kstrtabns_drm_crtc_add_crc_entry }, section "___ksymtab_gpl+drm_crtc_add_crc_entry", align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Expected < %lu bytes into crtc crc control\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s*\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"XXXXXXXXXX\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" 0x%08x\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_debugfs_crc.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_drm_crtc_add_crc_entry], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_debugfs_crtc_crc_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %3, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %13) #9
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %14, ptr noundef %0, ptr noundef nonnull @drm_crtc_crc_control_fops) #9
  %16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %14, ptr noundef %0, ptr noundef nonnull @drm_crtc_crc_data_fops) #9
  br label %17

17:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_add_crc_entry(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  br label %35

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %14, 1
  %18 = sub i32 %16, %17
  %19 = and i32 %18, 127
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26, i32 3
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  store i8 1, ptr %22, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %35

26:                                               ; preds = %12
  %27 = getelementptr %struct.drm_crtc_crc_entry, ptr %9, i32 %14
  %28 = getelementptr %struct.drm_crtc_crc_entry, ptr %9, i32 %14, i32 1
  store i32 %2, ptr %28, align 4
  store i8 %5, ptr %27, align 4
  %29 = getelementptr %struct.drm_crtc_crc_entry, ptr %9, i32 %14, i32 2
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %29, ptr align 4 %3, i32 %32, i1 false)
  %33 = and i32 %17, 127
  store i32 %33, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  %34 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26, i32 8
  tail call void @__wake_up(ptr noundef %34, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %35

35:                                               ; preds = %26, %25, %21, %11
  %36 = phi i32 [ 0, %26 ], [ -22, %11 ], [ -105, %25 ], [ -105, %21 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc_control_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %4
  %13 = icmp ugt i32 %2, 4095
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef 4096) #9
  br label %49

15:                                               ; preds = %12
  %16 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %2) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %49

20:                                               ; preds = %15
  %21 = add nsw i32 %2, -1
  %22 = getelementptr i8, ptr %16, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 10
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8 0, ptr %22, align 1
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %28, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %9, ptr noundef %16, ptr noundef nonnull %5) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  call void @kfree(ptr noundef %16) #9
  br label %49

34:                                               ; preds = %26
  call void @_raw_spin_lock_irq(ptr noundef %10) #9
  %35 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 26, i32 2
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %39 = load i16, ptr %10, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  call void @kfree(ptr noundef %16) #9
  br label %49

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 26, i32 1
  %43 = load ptr, ptr %42, align 4
  call void @kfree(ptr noundef %43) #9
  store ptr %16, ptr %42, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %44 = load i16, ptr %10, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %46 = zext i32 %2 to i64
  %47 = load i64, ptr %3, align 8
  %48 = add i64 %47, %46
  store i64 %48, ptr %3, align 8
  br label %49

49:                                               ; preds = %41, %38, %33, %18, %14, %4
  %50 = phi i32 [ -7, %14 ], [ %19, %18 ], [ %31, %33 ], [ -16, %38 ], [ %2, %41 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc_control_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @crc_control_show, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc_control_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %8, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %13 = call ptr %10(ptr noundef %6, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %14 = load i32, ptr %3, align 4
  %15 = icmp ne i32 %14, 0
  %16 = icmp ne ptr %13, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 26, i32 1
  br label %21

20:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %43

21:                                               ; preds = %36, %18
  %22 = phi i32 [ 0, %18 ], [ %37, %36 ]
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %23, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr ptr, ptr %13, i32 %22
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %25(ptr noundef %6, ptr noundef %27, ptr noundef nonnull %4) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load ptr, ptr %26, align 4
  %32 = load ptr, ptr %19, align 4
  %33 = call i32 @strcmp(ptr noundef %31, ptr noundef %32)
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.6, ptr @.str.5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %31) #9
  br label %36

36:                                               ; preds = %30, %21
  %37 = add nuw i32 %22, 1
  %38 = load i32, ptr %3, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %21, label %20

40:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 26, i32 1
  %42 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %42) #9
  br label %43

43:                                               ; preds = %40, %20, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crtc_crc_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [122 x i8], align 1
  %9 = alloca %struct.wait_queue_entry, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 122, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(122) %8, i8 0, i32 122, i1 false), !annotation !9
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 26, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %19 = load volatile i32, ptr %14, align 4
  store volatile i32 %19, ptr %7, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %19, 65535
  %22 = icmp eq i32 %21, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br i1 %22, label %31, label %23, !prof !15

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 26, i32 5
  %25 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 26, i32 6
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %27 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 26, i32 8
  br label %32

28:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %29 = load i16, ptr %14, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %151

31:                                               ; preds = %78, %18
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_debugfs_crc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

32:                                               ; preds = %78, %23
  %33 = load i32, ptr %24, align 4
  %34 = load i32, ptr %25, align 4
  %35 = sub i32 %33, %34
  %36 = and i32 %35, 127
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %32
  %39 = load i32, ptr %26, align 4
  %40 = and i32 %39, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %43 = load i16, ptr %14, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %151

45:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %46 = load volatile i32, ptr %14, align 4
  store volatile i32 %46, ptr %6, align 4
  %47 = lshr i32 %46, 16
  %48 = and i32 %46, 65535
  %49 = icmp eq i32 %48, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %49, label %50, label %51, !prof !15

50:                                               ; preds = %45
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_debugfs_crc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

51:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %9, i32 noundef 0) #9
  %52 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef nonnull %9, i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %53 = load volatile i32, ptr %14, align 4
  store volatile i32 %53, ptr %5, align 4
  %54 = lshr i32 %53, 16
  %55 = and i32 %53, 65535
  %56 = icmp eq i32 %55, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %56, label %57, label %58, !prof !15

57:                                               ; preds = %70, %51
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_debugfs_crc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

58:                                               ; preds = %70, %51
  %59 = phi i32 [ %73, %70 ], [ %52, %51 ]
  %60 = load i32, ptr %24, align 4
  %61 = load i32, ptr %25, align 4
  %62 = sub i32 %60, %61
  %63 = and i32 %62, 127
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = icmp eq i32 %59, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %68 = load i16, ptr %14, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %151

70:                                               ; preds = %65
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %71 = load i16, ptr %14, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  call void @schedule() #9
  call void @_raw_spin_lock_irq(ptr noundef %14) #9
  %73 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef nonnull %9, i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %74 = load volatile i32, ptr %14, align 4
  store volatile i32 %74, ptr %5, align 4
  %75 = lshr i32 %74, 16
  %76 = and i32 %74, 65535
  %77 = icmp eq i32 %76, %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %77, label %57, label %58, !prof !15

78:                                               ; preds = %58
  call void @finish_wait(ptr noundef %27, ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %79 = load volatile i32, ptr %14, align 4
  store volatile i32 %79, ptr %7, align 4
  %80 = lshr i32 %79, 16
  %81 = and i32 %79, 65535
  %82 = icmp eq i32 %81, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br i1 %82, label %31, label %32, !prof !15

83:                                               ; preds = %32
  %84 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 26, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 26, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %87, 11
  %89 = add i32 %88, 12
  %90 = icmp ugt i32 %89, %2
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %92 = load i16, ptr %14, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %151

94:                                               ; preds = %83
  %95 = getelementptr %struct.drm_crtc_crc_entry, ptr %85, i32 %34
  %96 = add i32 %34, 1
  %97 = and i32 %96, 127
  store i32 %97, ptr %25, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %98 = load i16, ptr %14, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %100 = load i8, ptr %95, align 4, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = getelementptr %struct.drm_crtc_crc_entry, ptr %85, i32 %34, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.7, i32 noundef %104)
  br label %107

106:                                              ; preds = %94
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %8, ptr noundef nonnull align 1 dereferenceable(11) @.str.8, i32 11, i1 false)
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i32, ptr %86, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds i8, ptr %8, i32 10
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i32 [ 0, %110 ], [ %119, %112 ]
  %114 = mul i32 %113, 11
  %115 = getelementptr i8, ptr %111, i32 %114
  %116 = getelementptr %struct.drm_crtc_crc_entry, ptr %85, i32 %34, i32 2, i32 %113
  %117 = load i32, ptr %116, align 4
  %118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %115, ptr noundef nonnull @.str.9, i32 noundef %117)
  %119 = add nuw i32 %113, 1
  %120 = load i32, ptr %86, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %112, label %122

122:                                              ; preds = %112
  %123 = mul i32 %120, 11
  br label %124

124:                                              ; preds = %122, %107
  %125 = phi i32 [ 0, %107 ], [ %123, %122 ]
  %126 = getelementptr inbounds i8, ptr %8, i32 10
  %127 = getelementptr i8, ptr %126, i32 %125
  store i16 10, ptr %127, align 1
  %128 = load i32, ptr %86, align 4
  %129 = mul i32 %128, 11
  %130 = add i32 %129, 12
  %131 = icmp ugt i32 %130, 122
  br i1 %131, label %132, label %133, !prof !15

132:                                              ; preds = %124
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef 122, i32 noundef %130) #9
  br label %151

133:                                              ; preds = %124
  %134 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %130, i32 -1090519040) #10, !srcloc !17
  %135 = extractvalue { i32, i32 } %134, 0
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = tail call ptr @llvm.thread.pointer() #9
  %139 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 3
  %140 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %139) #11, !srcloc !18
  %141 = and i32 %140, -13
  %142 = or i32 %141, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %142) #9, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !20
  %143 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %130) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #9, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !20
  br label %144

144:                                              ; preds = %137, %133
  %145 = phi i32 [ %143, %137 ], [ %130, %133 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, ptr %86, align 4
  %149 = mul i32 %148, 11
  %150 = add i32 %149, 12
  br label %151

151:                                              ; preds = %147, %144, %132, %91, %67, %42, %28
  %152 = phi i32 [ -11, %42 ], [ %59, %67 ], [ -22, %91 ], [ %150, %147 ], [ 0, %28 ], [ -14, %144 ], [ -14, %132 ]
  call void @llvm.lifetime.end.p0(i64 122, ptr nonnull %8) #9
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crtc_crc_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 26
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 26, i32 8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 4
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %9, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void %12(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %1) #9
  br label %17

17:                                               ; preds = %16, %11, %2
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #9
  %18 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 26, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %22 = load volatile i32, ptr %8, align 4
  store volatile i32 %22, ptr %3, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %22, 65535
  %25 = icmp eq i32 %24, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %25, label %26, label %27, !prof !15

26:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_debugfs_crc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 26, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 26, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = and i32 %32, 127
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 0, i32 65
  br label %36

36:                                               ; preds = %27, %17
  %37 = phi i32 [ 0, %17 ], [ %35, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %38 = load i16, ptr %8, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crtc_crc_open(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_driver, ptr %9, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %11, 16
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 4
  %27 = tail call i32 @drm_modeset_lock_single_interruptible(ptr noundef %26) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 22
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_crtc_state, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  tail call void @drm_modeset_unlock(ptr noundef %26) #9
  br i1 %34, label %81, label %35

35:                                               ; preds = %29, %21, %17
  %36 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %37, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 26, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %39(ptr noundef %5, ptr noundef %41, ptr noundef nonnull %3) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %35
  %45 = load i32, ptr %3, align 4
  %46 = icmp ugt i32 %45, 10
  br i1 %46, label %47, label %48, !prof !15

47:                                               ; preds = %44
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 220, i32 noundef 9, ptr noundef null) #9
  br label %81

48:                                               ; preds = %44
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %50, label %51, !prof !15

50:                                               ; preds = %48
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 223, i32 noundef 9, ptr noundef null) #9
  br label %81

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %53 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 6144) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %81, label %55

55:                                               ; preds = %51
  call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %56 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 26, i32 2
  %57 = load i8, ptr %56, align 4, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  store i8 1, ptr %56, align 4
  %60 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 26, i32 4
  store ptr %53, ptr %60, align 4
  %61 = load i32, ptr %3, align 4
  %62 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 26, i32 7
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ 0, %59 ], [ -16, %55 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %65 = load i16, ptr %6, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br i1 %58, label %68, label %67

67:                                               ; preds = %63
  call void @kfree(ptr noundef nonnull %53) #9
  br label %81

68:                                               ; preds = %63
  %69 = load ptr, ptr %36, align 8
  %70 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %69, i32 0, i32 16
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %40, align 4
  %73 = call i32 %71(ptr noundef %5, ptr noundef %72) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %76 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 26, i32 4
  %77 = load ptr, ptr %76, align 4
  call void @kfree(ptr noundef %77) #9
  %78 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 26, i32 3
  store i8 0, ptr %78, align 1
  store i8 0, ptr %56, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %76, i8 0, i64 16, i1 false) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %79 = load i16, ptr %6, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %81

81:                                               ; preds = %75, %68, %67, %51, %50, %47, %35, %29, %25
  %82 = phi i32 [ -22, %47 ], [ -22, %50 ], [ %64, %67 ], [ %73, %75 ], [ %27, %25 ], [ -5, %29 ], [ %42, %35 ], [ -12, %51 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crtc_crc_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 26
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 26, i32 2
  store i8 0, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %9 = load i16, ptr %7, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %12, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %6, ptr noundef null) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #9
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 26, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 26, i32 3
  store i8 0, ptr %18, align 1
  store i8 0, ptr %8, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %19 = load i16, ptr %7, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_single_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 2149021666}
!11 = !{i64 2149017490}
!12 = !{i64 2149017565, i64 2149017592, i64 2149017639, i64 2149017661, i64 2149017689, i64 2149017709}
!13 = !{i64 758985}
!14 = !{i64 2149045810}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2154971213, i64 2154971711, i64 2154971250, i64 2154971306, i64 2154971340, i64 2154971364, i64 2154971405, i64 2154971426, i64 2154971454, i64 2154971488}
!17 = !{i64 2150987299, i64 2150987324}
!18 = !{i64 3482833}
!19 = !{i64 3483030}
!20 = !{i64 2150968309}
