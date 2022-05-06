; ModuleID = '/llk/IR/drivers/scsi/sr.c_pt.bc'
source_filename = "../drivers/scsi/sr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdrom_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.scsi_mode_data = type { i32, i16, i8, i8, i8, i8 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_cd = type { ptr, i32, ptr, i32, i32, i8, i32, i8, %struct.cdrom_device_info, %struct.mutex, %struct.kref, ptr }
%struct.cdrom_device_info = type { ptr, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [20 x i8], i8, i32, i8, i8, i16, i32, ptr, i32, i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.34 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.event_header = type { i16, i8, i8 }
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.35, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.36, %union.anon.37, %union.anon.38, %union.anon.43, ptr, ptr }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%union.anon.37 = type { %struct.rb_node }
%union.anon.38 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, ptr }
%union.anon.43 = type { i64, [8 x i8] }

@__UNIQUE_ID_description278 = internal constant [42 x i8] c"sr_mod.description=SCSI cdrom (sr) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file279 = internal constant [32 x i8] c"sr_mod.file=drivers/scsi/sr_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [19 x i8] c"sr_mod.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias281 = internal constant [30 x i8] c"sr_mod.alias=block-major-11-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias282 = internal constant [26 x i8] c"sr_mod.alias=scsi:t-0x05*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias283 = internal constant [26 x i8] c"sr_mod.alias=scsi:t-0x04*\00", section ".modinfo", align 1
@sr_template = internal global %struct.scsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @sr_probe, ptr null, ptr @sr_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sr_pm_ops, ptr null, ptr null }, ptr null, ptr @sr_init_command, ptr null, ptr @sr_done, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@__initcall__kmod_sr_mod__286_1079_init_sr6 = internal global ptr @init_sr, section ".initcall6.init", align 4
@__exitcall_exit_sr = internal global ptr @exit_sr, section ".exitcall.exit", align 4
@__UNIQUE_ID_file287 = internal constant [32 x i8] c"sr_mod.file=drivers/scsi/sr_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [19 x i8] c"sr_mod.license=GPL\00", section ".modinfo", align 1
@sr_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sr_runtime_suspend, ptr null, ptr null }, align 4
@sr_bio_compl_lkclass = internal global %struct.lock_class_key zeroinitializer, align 1
@sr_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"&cd->lock\00", align 1
@sr_index_lock = internal global %struct.spinlock zeroinitializer, align 4
@sr_index_bits = internal global [8 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sr%d\00", align 1
@sr_bdops = internal constant %struct.block_device_operations { ptr null, ptr @sr_block_open, ptr @sr_block_release, ptr null, ptr @sr_block_ioctl, ptr null, ptr @sr_block_check_events, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sr_dops = internal constant %struct.cdrom_device_ops { ptr @sr_open, ptr @sr_release, ptr @sr_drive_status, ptr @sr_check_events, ptr @sr_tray_move, ptr @sr_lock_door, ptr @sr_select_speed, ptr null, ptr @sr_get_last_session, ptr @sr_get_mcn, ptr @sr_reset, ptr @sr_audio_ioctl, ptr @sr_packet, ptr @sr_read_cdda_bpc, i32 3931135 }, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Attached scsi CD-ROM %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sr_ref_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sr_ref_mutex, i64 12), ptr getelementptr (i8, ptr @sr_ref_mutex, i64 12) } }, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"GET_EVENT and TUR disagree continuously, suppress GET_EVENT events\0A\00", align 1
@__const.sr_get_events.cmd = private unnamed_addr constant [10 x i8] c"J\01\00\00\10\00\00\00\08\00", align 1
@get_capabilities.loadmech = internal unnamed_addr constant [8 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.10, ptr @.str.10], align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"caddy\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"tray\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"pop-up\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"changer\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"cartridge changer\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"out of memory.\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"scsi-1 drive\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"scsi3-mmc drive: %dx/%dx %s%s%s%s%s%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"writer \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"dvd-ram \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"cd/rw \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"xa/form2 \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"cdda \00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"unsupported sector size %d.\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"bad sector size %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Unknown sr command\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"mismatch count %d, bytes %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\015\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"unaligned transfer\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias281, ptr @__UNIQUE_ID_alias282, ptr @__UNIQUE_ID_alias283, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license280, ptr @__UNIQUE_ID_license288, ptr @__exitcall_exit_sr, ptr @__initcall__kmod_sr_mod__286_1079_init_sr6, ptr @exit_sr], section "llvm.metadata"
@switch.table.sr_check_events = private unnamed_addr constant [3 x i32] [i32 2, i32 1, i32 1], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_sr() #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef nonnull @sr_template) #12
  tail call void @unregister_blkdev(i32 noundef 11, ptr noundef nonnull @.str) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_sr() #0 section ".init.text" {
  %1 = tail call i32 @__register_blkdev(i32 noundef 11, ptr noundef nonnull @.str, ptr noundef null) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @scsi_register_driver(ptr noundef nonnull @sr_template) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @unregister_blkdev(i32 noundef 11, ptr noundef nonnull @.str) #12
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.scsi_mode_data, align 4
  %3 = alloca %struct.scsi_sense_hdr, align 8
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = tail call i32 @scsi_autopm_get_device(ptr noundef %4) #12
  %6 = getelementptr i8, ptr %0, i32 -148
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %10, label %246

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 168) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %246, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 10
  store volatile i32 1, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 -260
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @__alloc_disk_node(ptr noundef %17, i32 noundef -1, ptr noundef nonnull @sr_bio_compl_lkclass) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %244, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef nonnull @sr_probe.__key) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #12
  %22 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @sr_index_bits, i32 noundef 256) #12
  %23 = icmp eq i32 %22, 256
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %25 = load i16, ptr @sr_index_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @sr_index_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %242

27:                                               ; preds = %20
  %28 = and i32 %22, 31
  %29 = shl nuw i32 1, %28
  %30 = lshr i32 %22, 5
  %31 = getelementptr i32, ptr @sr_index_bits, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %34 = load i16, ptr @sr_index_lock, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr @sr_index_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  store i32 11, ptr %18, align 8
  %36 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 1
  store i32 %22, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 2
  store i32 1, ptr %37, align 8
  %38 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 3
  %39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %38, ptr noundef nonnull @.str.2, i32 noundef %22)
  %40 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 8
  store ptr @sr_bdops, ptr %40, align 8
  %41 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 5
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 4
  store i16 3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 5
  store i16 7, ptr %45, align 2
  %46 = load ptr, ptr %16, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %46, i32 noundef 3000) #12
  %47 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 2
  store ptr %4, ptr %47, align 8
  %48 = getelementptr %struct.scsi_cd, ptr %12, i32 0, i32 11
  store ptr %18, ptr %48, align 8
  store ptr @sr_template, ptr %12, align 8
  %49 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 1
  store i32 2097151, ptr %49, align 4
  %50 = getelementptr i8, ptr %0, i32 -68
  %51 = load i64, ptr %50, align 4
  %52 = or i64 %51, 2
  store i64 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 5
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, -59
  %56 = or i8 %55, 34
  store i8 %56, ptr %53, align 4
  %57 = getelementptr %struct.scsi_cd, ptr %12, i32 0, i32 8
  store ptr @sr_dops, ptr %57, align 8
  %58 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 8, i32 3
  store ptr %12, ptr %58, align 8
  %59 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 8, i32 4
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 8, i32 6
  store i32 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 8, i32 11
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %61, ptr noundef nonnull @.str.2, i32 noundef %22)
  %63 = getelementptr i8, ptr %0, i32 -156
  store i32 2048, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #12, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !12
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3264, i32 noundef 512) #13
  %66 = icmp eq ptr %65, null
  %67 = load ptr, ptr %47, align 8
  br i1 %66, label %68, label %69

68:                                               ; preds = %27
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef %67, ptr noundef %61, ptr noundef nonnull @.str.14) #12
  br label %211

69:                                               ; preds = %27
  %70 = call i32 @scsi_test_unit_ready(ptr noundef %67, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %3) #12
  %71 = load ptr, ptr %47, align 8
  %72 = call i32 @scsi_mode_sense(ptr noundef %71, i32 noundef 0, i32 noundef 42, ptr noundef nonnull %65, i32 noundef 128, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %2, ptr noundef null) #12
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %69
  %75 = load i32, ptr %2, align 4
  %76 = icmp ugt i32 %75, 128
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.scsi_mode_data, ptr %2, i32 0, i32 4
  %79 = load i8, ptr %78, align 4
  %80 = zext i8 %79 to i32
  %81 = getelementptr inbounds %struct.scsi_mode_data, ptr %2, i32 0, i32 1
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = add nuw nsw i32 %83, %80
  %85 = icmp ugt i32 %84, %75
  br i1 %85, label %86, label %91

86:                                               ; preds = %77, %74, %69
  %87 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 8, i32 5
  store i32 1, ptr %87, align 8
  %88 = load i32, ptr %59, align 4
  %89 = or i32 %88, 3923992
  store i32 %89, ptr %59, align 4
  call void @kfree(ptr noundef nonnull %65) #12
  %90 = load ptr, ptr %47, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.15, ptr noundef %90, ptr noundef %61, ptr noundef nonnull @.str.16) #12
  br label %211

91:                                               ; preds = %77
  %92 = add nuw nsw i32 %84, 8
  %93 = getelementptr i8, ptr %65, i32 %92
  %94 = load i16, ptr %93, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94) #12
  %96 = udiv i16 %95, 176
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 8, i32 5
  store i32 %97, ptr %98, align 8
  %99 = load i8, ptr %53, align 4
  %100 = add nuw nsw i32 %84, 5
  %101 = getelementptr i8, ptr %65, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = shl i8 %102, 4
  %104 = and i8 %103, 16
  %105 = and i8 %99, -25
  %106 = or i8 %105, %104
  %107 = or i8 %106, 8
  store i8 %107, ptr %53, align 4
  %108 = load ptr, ptr %47, align 8
  %109 = add nuw nsw i32 %84, 14
  %110 = getelementptr i8, ptr %65, i32 %109
  %111 = load i16, ptr %110, align 1
  %112 = call i16 @llvm.bswap.i16(i16 %111) #12
  %113 = udiv i16 %112, 176
  %114 = zext i16 %113 to i32
  %115 = add nuw nsw i32 %84, 3
  %116 = getelementptr i8, ptr %65, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @.str.10, ptr @.str.18
  %122 = and i32 %118, 32
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, ptr @.str.10, ptr @.str.19
  %125 = add nuw nsw i32 %84, 2
  %126 = getelementptr i8, ptr %65, i32 %125
  %127 = load i8, ptr %126, align 1
  %128 = and i8 %127, 2
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, ptr @.str.10, ptr @.str.20
  %131 = add nuw nsw i32 %84, 4
  %132 = getelementptr i8, ptr %65, i32 %131
  %133 = load i8, ptr %132, align 1
  %134 = and i8 %133, 32
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %135, ptr @.str.10, ptr @.str.21
  %137 = and i8 %102, 1
  %138 = icmp eq i8 %137, 0
  %139 = select i1 %138, ptr @.str.10, ptr @.str.22
  %140 = add nuw nsw i32 %84, 6
  %141 = getelementptr i8, ptr %65, i32 %140
  %142 = load i8, ptr %141, align 1
  %143 = lshr i8 %142, 5
  %144 = zext i8 %143 to i32
  %145 = getelementptr [8 x ptr], ptr @get_capabilities.loadmech, i32 0, i32 %144
  %146 = load ptr, ptr %145, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.15, ptr noundef %108, ptr noundef %61, ptr noundef nonnull @.str.17, i32 noundef %114, i32 noundef %97, ptr noundef nonnull %121, ptr noundef nonnull %124, ptr noundef nonnull %130, ptr noundef nonnull %136, ptr noundef nonnull %139, ptr noundef %146) #12
  %147 = load i8, ptr %141, align 1
  %148 = icmp ult i8 %147, 32
  br i1 %148, label %149, label %152

149:                                              ; preds = %91
  %150 = load i32, ptr %59, align 4
  %151 = or i32 %150, 1
  store i32 %151, ptr %59, align 4
  br label %152

152:                                              ; preds = %149, %91
  %153 = load i8, ptr %126, align 1
  %154 = and i8 %153, 8
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, ptr %59, align 4
  %158 = or i32 %157, 32768
  store i32 %158, ptr %59, align 4
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i8, ptr %116, align 1
  %161 = and i8 %160, 32
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, ptr %59, align 4
  %165 = or i32 %164, 131072
  store i32 %165, ptr %59, align 4
  br label %166

166:                                              ; preds = %163, %159
  %167 = and i8 %160, 16
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, ptr %59, align 4
  %171 = or i32 %170, 65536
  store i32 %171, ptr %59, align 4
  br label %172

172:                                              ; preds = %169, %166
  %173 = and i8 %160, 2
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, ptr %59, align 4
  %177 = or i32 %176, 16384
  store i32 %177, ptr %59, align 4
  br label %178

178:                                              ; preds = %175, %172
  %179 = and i8 %160, 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, ptr %59, align 4
  %183 = or i32 %182, 8192
  store i32 %183, ptr %59, align 4
  br label %184

184:                                              ; preds = %181, %178
  %185 = and i8 %147, 8
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, ptr %59, align 4
  %189 = or i32 %188, 2
  store i32 %189, ptr %59, align 4
  br label %190

190:                                              ; preds = %187, %184
  %191 = and i8 %147, -64
  %192 = icmp eq i8 %191, -128
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = load i32, ptr %60, align 4
  br label %197

195:                                              ; preds = %190
  %196 = call i32 @cdrom_number_of_slots(ptr noundef %57) #12
  store i32 %196, ptr %60, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ %196, %195 ]
  %199 = icmp slt i32 %198, 2
  %200 = load i32, ptr %59, align 4
  br i1 %199, label %201, label %203

201:                                              ; preds = %197
  %202 = or i32 %200, 16
  store i32 %202, ptr %59, align 4
  br label %203

203:                                              ; preds = %201, %197
  %204 = phi i32 [ %202, %201 ], [ %200, %197 ]
  %205 = and i32 %204, 3293184
  %206 = icmp eq i32 %205, 3293184
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = load i8, ptr %53, align 4
  %209 = or i8 %208, 1
  store i8 %209, ptr %53, align 4
  br label %210

210:                                              ; preds = %207, %203
  call void @kfree(ptr noundef nonnull %65) #12
  br label %211

211:                                              ; preds = %210, %86, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  call void @sr_vendor_init(ptr noundef nonnull %12) #12
  %212 = load i32, ptr %49, align 4
  %213 = zext i32 %212 to i64
  call void @set_capacity(ptr noundef nonnull %18, i64 noundef %213) #12
  %214 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 10
  store ptr %12, ptr %214, align 8
  %215 = call i32 @register_cdrom(ptr noundef nonnull %18, ptr noundef %57) #12
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %211
  %218 = load ptr, ptr %16, align 4
  call void @blk_pm_runtime_init(ptr noundef %218, ptr noundef %0) #12
  %219 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %12, ptr %219, align 8
  call fastcc void @sr_revalidate_disk(ptr noundef nonnull %12)
  %220 = call i32 @device_add_disk(ptr noundef %0, ptr noundef nonnull %18, ptr noundef null) #12
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %237, label %222

222:                                              ; preds = %217
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !14
  %223 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #12, !srcloc !15
  %224 = extractvalue { i32, i32, i32 } %223, 0
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = icmp sgt i32 %224, 0
  br i1 %227, label %246, label %228, !prof !16

228:                                              ; preds = %226
  call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #12
  br label %246

229:                                              ; preds = %222
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %230 = load ptr, ptr %48, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #12
  %231 = getelementptr inbounds %struct.gendisk, ptr %230, i32 0, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = and i32 %232, 1048575
  call void @_clear_bit(i32 noundef %233, ptr noundef nonnull @sr_index_bits) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %234 = load i16, ptr @sr_index_lock, align 4
  %235 = add i16 %234, 1
  store i16 %235, ptr @sr_index_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  call void @unregister_cdrom(ptr noundef %57) #12
  %236 = getelementptr inbounds %struct.gendisk, ptr %230, i32 0, i32 10
  store ptr null, ptr %236, align 8
  call void @put_disk(ptr noundef %230) #12
  call void @kfree(ptr noundef nonnull %12) #12
  br label %246

237:                                              ; preds = %217
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.3, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %61) #12
  %238 = load ptr, ptr %47, align 8
  br label %246

239:                                              ; preds = %211
  call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #12
  call void @_clear_bit(i32 noundef %22, ptr noundef nonnull @sr_index_bits) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %240 = load i16, ptr @sr_index_lock, align 4
  %241 = add i16 %240, 1
  store i16 %241, ptr @sr_index_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %242

242:                                              ; preds = %239, %24
  %243 = phi i32 [ -16, %24 ], [ -12, %239 ]
  call void @put_disk(ptr noundef nonnull %18) #12
  br label %244

244:                                              ; preds = %242, %14
  %245 = phi i32 [ %243, %242 ], [ -12, %14 ]
  call void @kfree(ptr noundef nonnull %12) #12
  br label %246

246:                                              ; preds = %244, %237, %229, %228, %226, %10, %1
  %247 = phi ptr [ %238, %237 ], [ %4, %229 ], [ %4, %228 ], [ %4, %226 ], [ %4, %1 ], [ %4, %10 ], [ %4, %244 ]
  %248 = phi i32 [ 0, %237 ], [ %220, %229 ], [ %220, %228 ], [ %220, %226 ], [ -19, %1 ], [ -12, %10 ], [ %245, %244 ]
  call void @scsi_autopm_put_device(ptr noundef %247) #12
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @scsi_autopm_get_device(ptr noundef %5) #12
  %7 = getelementptr %struct.scsi_cd, ptr %3, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  tail call void @del_gendisk(ptr noundef %8) #12
  store ptr null, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @sr_ref_mutex) #12
  %9 = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !15
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %25, label %15, !prof !16

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #12
  br label %25

16:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %17 = load ptr, ptr %7, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #12
  %18 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1048575
  tail call void @_clear_bit(i32 noundef %20, ptr noundef nonnull @sr_index_bits) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %21 = load i16, ptr @sr_index_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @sr_index_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %23 = getelementptr %struct.scsi_cd, ptr %3, i32 0, i32 8
  tail call void @unregister_cdrom(ptr noundef %23) #12
  %24 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 10
  store ptr null, ptr %24, align 8
  tail call void @put_disk(ptr noundef %17) #12
  tail call void @kfree(ptr noundef %3) #12
  br label %25

25:                                               ; preds = %16, %15, %13
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sr_init_command(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %0) #12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %115

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.scsi_cd, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %114, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 68
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %17 [
    i32 7, label %114
    i32 6, label %114
    i32 4, label %114
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 41
  %19 = load i64, ptr %18, align 4
  %20 = and i64 %19, 2
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 20
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %25 [
    i32 2048, label %26
    i32 1024, label %26
    i32 512, label %26
  ]

25:                                               ; preds = %22
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.13, ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %24) #12
  br label %114

26:                                               ; preds = %22, %22, %22
  %27 = getelementptr i8, ptr %0, i32 -156
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i8
  switch i8 %29, label %42 [
    i8 1, label %30
    i8 0, label %39
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.scsi_cd, ptr %10, i32 0, i32 5
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %114, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %37 = load ptr, ptr %36, align 4
  store i8 42, ptr %37, align 1
  %38 = getelementptr inbounds %struct.scsi_cd, ptr %10, i32 0, i32 8, i32 15
  store i8 1, ptr %38, align 1
  br label %43

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %41 = load ptr, ptr %40, align 4
  store i8 40, ptr %41, align 1
  br label %43

42:                                               ; preds = %26
  tail call void @blk_dump_rq_flags(ptr noundef %2, ptr noundef nonnull @.str.25) #12
  br label %114

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i32 [ %56, %50 ], [ 0, %47 ]
  %52 = phi i32 [ %57, %50 ], [ 0, %47 ]
  %53 = phi ptr [ %58, %50 ], [ %49, %47 ]
  %54 = getelementptr inbounds %struct.scatterlist, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %51
  %57 = add nuw nsw i32 %52, 1
  %58 = tail call ptr @sg_next(ptr noundef %53) #12
  %59 = icmp eq i32 %57, %45
  br i1 %59, label %60, label %50

60:                                               ; preds = %50, %43
  %61 = phi i32 [ 0, %43 ], [ %56, %50 ]
  %62 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.13, ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %61, i32 noundef %63) #12
  %66 = load i32, ptr %62, align 4
  %67 = icmp ugt i32 %66, %61
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 %61, ptr %62, align 4
  br label %69

69:                                               ; preds = %68, %65, %60
  %70 = phi i32 [ %66, %65 ], [ %61, %68 ], [ %61, %60 ]
  %71 = getelementptr i8, ptr %0, i32 -128
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = ashr i32 %24, 9
  %75 = urem i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = urem i32 %70, %24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77, %69
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef nonnull @.str.28) #12
  br label %114

81:                                               ; preds = %77
  %82 = lshr i32 %70, 9
  %83 = udiv i32 %82, %74
  %84 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 1
  store i8 0, ptr %86, align 1
  %87 = load i64, ptr %71, align 8
  %88 = trunc i64 %87 to i32
  %89 = udiv i32 %88, %74
  %90 = icmp ugt i32 %83, 65535
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = mul i32 %24, 65535
  store i32 %92, ptr %62, align 4
  br label %93

93:                                               ; preds = %91, %81
  %94 = phi i32 [ 65535, %91 ], [ %83, %81 ]
  %95 = load ptr, ptr %84, align 4
  %96 = getelementptr i8, ptr %95, i32 2
  %97 = tail call i32 @llvm.bswap.i32(i32 %89) #12
  store i32 %97, ptr %96, align 1
  %98 = load ptr, ptr %84, align 4
  %99 = getelementptr i8, ptr %98, i32 9
  store i8 0, ptr %99, align 1
  %100 = load ptr, ptr %84, align 4
  %101 = getelementptr i8, ptr %100, i32 6
  store i8 0, ptr %101, align 1
  %102 = trunc i32 %94 to i16
  %103 = load ptr, ptr %84, align 4
  %104 = getelementptr i8, ptr %103, i32 7
  %105 = tail call i16 @llvm.bswap.i16(i16 %102) #12
  store i16 %105, ptr %104, align 1
  %106 = load ptr, ptr %11, align 8
  %107 = getelementptr inbounds %struct.scsi_device, ptr %106, i32 0, i32 20
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 20
  store i32 %108, ptr %109, align 4
  %110 = shl nuw nsw i32 %94, 9
  %111 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 19
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  store i32 3, ptr %112, align 4
  %113 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 10, ptr %113, align 4
  br label %115

114:                                              ; preds = %80, %42, %30, %25, %17, %14, %14, %14, %5
  tail call void @scsi_free_sgtables(ptr noundef %0) #12
  br label %115

115:                                              ; preds = %114, %93, %1
  %116 = phi i8 [ 10, %114 ], [ 0, %93 ], [ %3, %1 ]
  ret i8 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_done(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i32 %5, i32 0
  %8 = getelementptr i8, ptr %0, i32 -168
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = and i32 %3, -2147483394
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %78

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 127
  %21 = icmp eq i8 %20, 112
  br i1 %21, label %22, label %78

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %18, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %25, -1
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 31)
  switch i32 %27, label %78 [
    i32 1, label %28
    i32 6, label %28
    i32 2, label %28
    i32 0, label %77
  ]

28:                                               ; preds = %22, %22, %22
  %29 = and i8 %19, -112
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %78, label %31

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %18, i32 3
  %33 = load i32, ptr %32, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  %35 = getelementptr i8, ptr %0, i32 -120
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 9
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i32 [ %41, %38 ], [ 0, %31 ]
  %44 = tail call i32 @llvm.umax.i32(i32 %43, i32 4)
  %45 = getelementptr inbounds %struct.scsi_cd, ptr %13, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.scsi_device, ptr %46, i32 0, i32 20
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 2048
  %50 = shl i32 %34, 2
  %51 = select i1 %49, i32 %50, i32 %34
  %52 = sub nsw i32 0, %44
  %53 = and i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, ptr %0, i32 -128
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = sub i32 %53, %57
  %59 = shl i32 %58, 9
  %60 = icmp sgt i32 %59, -1
  %61 = icmp slt i32 %59, %5
  %62 = select i1 %60, i1 %61, i1 false
  %63 = select i1 %62, i32 %59, i32 0
  %64 = getelementptr inbounds %struct.scsi_cd, ptr %13, i32 0, i32 11
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.gendisk, ptr %65, i32 0, i32 7
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.block_device, ptr %67, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = icmp ugt i64 %69, %54
  br i1 %70, label %71, label %78

71:                                               ; preds = %42
  %72 = getelementptr inbounds %struct.scsi_cd, ptr %13, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = sub i32 %73, %53
  %75 = icmp ult i32 %74, 300
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  tail call void @set_capacity(ptr noundef %65, i64 noundef %54) #12
  br label %78

77:                                               ; preds = %22
  br label %78

78:                                               ; preds = %77, %76, %71, %42, %28, %22, %16, %1
  %79 = phi i32 [ %7, %22 ], [ %5, %77 ], [ %63, %76 ], [ %63, %71 ], [ %63, %42 ], [ %7, %28 ], [ %7, %16 ], [ %7, %1 ]
  ret i32 %79
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_disk_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sr_vendor_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cdrom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_pm_runtime_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sr_revalidate_disk(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca [8 x i8], align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !12
  %6 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @scsi_test_unit_ready(ptr noundef %7, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %5) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 8
  %12 = call i32 @sr_cd_check(ptr noundef %11) #12
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %13 = getelementptr inbounds [10 x i8], ptr %2, i32 0, i32 1
  store i8 37, ptr %2, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %13, i8 0, i32 9, i1 false) #12
  store i64 0, ptr %3, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = call i32 @__scsi_execute(ptr noundef %14, ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull %3, i32 noundef 8, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #12
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  store i8 37, ptr %2, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %13, i8 0, i32 9, i1 false) #12
  store i64 0, ptr %3, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = call i32 @__scsi_execute(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull %3, i32 noundef 8, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #12
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  store i8 37, ptr %2, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %13, i8 0, i32 9, i1 false) #12
  store i64 0, ptr %3, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call i32 @__scsi_execute(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull %3, i32 noundef 8, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #12
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %17, %10
  %26 = phi i1 [ %16, %10 ], [ %20, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 1
  store i32 2097151, ptr %28, align 4
  br label %61

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !12
  %30 = load i32, ptr %3, align 8
  %31 = call i32 @llvm.bswap.i32(i32 %30) #12
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = call i32 @cdrom_get_last_written(ptr noundef %11, ptr noundef nonnull %4) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, ptr %33, align 4
  %38 = load i32, ptr %4, align 4
  %39 = call i32 @llvm.smax.i32(i32 %37, i32 %38) #12
  store i32 %39, ptr %33, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #12
  switch i32 %43, label %47 [
    i32 0, label %44
    i32 2340, label %44
    i32 2352, label %44
    i32 2048, label %44
    i32 512, label %53
  ]

44:                                               ; preds = %40, %40, %40, %40
  %45 = load i32, ptr %33, align 4
  %46 = shl i32 %45, 2
  br label %50

47:                                               ; preds = %40
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.15, ptr noundef %48, ptr noundef %49, ptr noundef nonnull @.str.23, i32 noundef %43) #12
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i32 [ 0, %47 ], [ %46, %44 ]
  %52 = phi i32 [ %43, %47 ], [ 2048, %44 ]
  store i32 %51, ptr %33, align 4
  br label %53

53:                                               ; preds = %50, %40
  %54 = phi i32 [ %43, %40 ], [ %52, %50 ]
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.scsi_device, ptr %55, i32 0, i32 20
  store i32 %54, ptr %56, align 4
  %57 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 11
  %58 = load ptr, ptr %57, align 8
  %59 = load i32, ptr %33, align 4
  %60 = zext i32 %59 to i64
  call void @set_capacity(ptr noundef %58, i64 noundef %60) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %61

61:                                               ; preds = %53, %27
  %62 = phi i32 [ 2048, %27 ], [ %54, %53 ]
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds %struct.scsi_device, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  call void @blk_queue_logical_block_size(ptr noundef %65, i32 noundef %62) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #12
  br label %66

66:                                               ; preds = %61, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_block_open(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @scsi_cd_get(ptr noundef %4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.scsi_cd, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @scsi_autopm_get_device(ptr noundef %9) #12
  %11 = tail call zeroext i1 @bdev_check_media_change(ptr noundef %0) #12
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @sr_revalidate_disk(ptr noundef nonnull %5)
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.scsi_cd, ptr %5, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %14) #12
  %15 = getelementptr inbounds %struct.scsi_cd, ptr %5, i32 0, i32 8
  %16 = tail call i32 @cdrom_open(ptr noundef %15, ptr noundef %0, i32 noundef %1) #12
  tail call void @mutex_unlock(ptr noundef %14) #12
  tail call void @scsi_autopm_put_device(ptr noundef %9) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call fastcc void @scsi_cd_put(ptr noundef nonnull %5)
  br label %19

19:                                               ; preds = %18, %13, %2
  %20 = phi i32 [ %16, %18 ], [ 0, %13 ], [ -6, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sr_block_release(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_cd, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.scsi_cd, ptr %4, i32 0, i32 8
  tail call void @cdrom_release(ptr noundef %6, i32 noundef %1) #12
  tail call void @mutex_unlock(ptr noundef %5) #12
  tail call fastcc void @scsi_cd_put(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_block_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.scsi_cd, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = inttoptr i32 %3 to ptr
  %12 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 15
  %13 = load i8, ptr %12, align 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call zeroext i1 @capable(i32 noundef 17) #12
  br i1 %16, label %17, label %34

17:                                               ; preds = %15, %4
  %18 = getelementptr inbounds %struct.scsi_cd, ptr %8, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %18) #12
  %19 = and i32 %1, 64
  %20 = icmp ne i32 %19, 0
  %21 = tail call i32 @scsi_ioctl_block_when_processing_errors(ptr noundef %10, i32 noundef %2, i1 noundef zeroext %20) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = tail call i32 @scsi_autopm_get_device(ptr noundef %10) #12
  %25 = getelementptr inbounds %struct.scsi_cd, ptr %8, i32 0, i32 8
  %26 = tail call i32 @cdrom_ioctl(ptr noundef %25, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #12
  %27 = icmp eq i32 %26, -38
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call i32 @scsi_ioctl(ptr noundef %10, i32 noundef %1, i32 noundef %2, ptr noundef %11) #12
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i32 [ %26, %23 ], [ %29, %28 ]
  tail call void @scsi_autopm_put_device(ptr noundef %10) #12
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi i32 [ %21, %17 ], [ %31, %30 ]
  tail call void @mutex_unlock(ptr noundef %18) #12
  br label %34

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %33, %32 ], [ -515, %15 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_block_check_events(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = tail call fastcc ptr @scsi_cd_get(ptr noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 45
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 8
  %13 = tail call i32 @cdrom_check_events(ptr noundef %12, i32 noundef %1) #12
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ 0, %5 ], [ %13, %11 ]
  tail call fastcc void @scsi_cd_put(ptr noundef nonnull %3)
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ %15, %14 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scsi_cd_get(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  tail call void @mutex_lock(ptr noundef nonnull @sr_ref_mutex) #12
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #12, !srcloc !14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #12, !srcloc !18
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !19

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !16

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #12
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @scsi_device_get(ptr noundef %18) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #12, !srcloc !14
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #12, !srcloc !15
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %38, label %27, !prof !16

27:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #12
  br label %38

28:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %29 = getelementptr %struct.scsi_cd, ptr %3, i32 0, i32 11
  %30 = load ptr, ptr %29, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #12
  %31 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1048575
  tail call void @_clear_bit(i32 noundef %33, ptr noundef nonnull @sr_index_bits) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %34 = load i16, ptr @sr_index_lock, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr @sr_index_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %36 = getelementptr %struct.scsi_cd, ptr %3, i32 0, i32 8
  tail call void @unregister_cdrom(ptr noundef %36) #12
  %37 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 10
  store ptr null, ptr %37, align 8
  tail call void @put_disk(ptr noundef %30) #12
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %38

38:                                               ; preds = %28, %27, %25, %16, %1
  %39 = phi ptr [ null, %1 ], [ %3, %16 ], [ null, %25 ], [ null, %27 ], [ null, %28 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #12
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bdev_check_media_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_cd_put(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @sr_ref_mutex) #12
  %4 = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #12, !srcloc !14
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #12, !srcloc !15
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %21, label %10, !prof !16

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #12
  br label %21

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %12 = getelementptr %struct.scsi_cd, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @sr_index_lock) #12
  %14 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1048575
  tail call void @_clear_bit(i32 noundef %16, ptr noundef nonnull @sr_index_bits) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %17 = load i16, ptr @sr_index_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @sr_index_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %19 = getelementptr %struct.scsi_cd, ptr %0, i32 0, i32 8
  tail call void @unregister_cdrom(ptr noundef %19) #12
  %20 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 10
  store ptr null, ptr %20, align 8
  tail call void @put_disk(ptr noundef %13) #12
  tail call void @kfree(ptr noundef %0) #12
  br label %21

21:                                               ; preds = %11, %10, %8
  tail call void @scsi_device_put(ptr noundef %3) #12
  tail call void @mutex_unlock(ptr noundef nonnull @sr_ref_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdrom_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_ioctl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_check_events(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_open(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_cd, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 -6, i32 0
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sr_release(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_drive_status(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_check_events(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca [8 x i8], align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca %struct.scsi_sense_hdr, align 8
  %7 = alloca %struct.scsi_sense_hdr, align 8
  %8 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store i64 0, ptr %7, align 8, !annotation !12
  %10 = icmp eq i32 %2, 2147483647
  br i1 %10, label %11, label %147

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.scsi_cd, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @__const.sr_get_events.cmd, i32 10, i1 false) #12
  %14 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !12
  %15 = call i32 @__scsi_execute(ptr noundef %13, ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull %4, i32 noundef 8, ptr noundef null, ptr noundef nonnull %6, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #12
  %16 = load i8, ptr %6, align 8
  %17 = and i8 %16, 112
  %18 = icmp eq i8 %17, 112
  %19 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 6
  %22 = select i1 %18, i1 %21, i1 false
  br i1 %22, label %43, label %23

23:                                               ; preds = %11
  %24 = icmp eq i32 %15, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %23
  %26 = load i16, ptr %4, align 8
  %27 = call i16 @llvm.bswap.i16(i16 %26) #12
  %28 = icmp ult i16 %27, 4
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.event_header, ptr %4, i32 0, i32 1
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, -121
  %33 = icmp eq i8 %32, 4
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i16, ptr %14, align 4
  %36 = trunc i16 %35 to i4
  %37 = add i4 %36, -1
  %38 = icmp ult i4 %37, 3
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = sext i4 %37 to i32
  %41 = getelementptr inbounds [3 x i32], ptr @switch.table.sr_check_events, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %39, %34, %29, %25, %23, %11
  %44 = phi i32 [ 1, %11 ], [ 0, %25 ], [ 0, %23 ], [ 0, %29 ], [ %42, %39 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %45 = getelementptr inbounds %struct.scsi_cd, ptr %9, i32 0, i32 7
  %46 = load i8, ptr %45, align 4
  %47 = trunc i32 %44 to i8
  %48 = shl nuw nsw i8 %47, 1
  %49 = and i8 %48, 2
  %50 = or i8 %46, %49
  store i8 %50, ptr %45, align 4
  %51 = and i8 %46, 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %43
  %54 = and i32 %44, 2
  br label %70

55:                                               ; preds = %43
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds %struct.scsi_device, ptr %56, i32 0, i32 41
  %58 = load i64, ptr %57, align 4
  %59 = and i64 %58, 2
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = or i32 %44, 1
  %63 = and i64 %58, -3
  store i64 %63, ptr %57, align 4
  %64 = load i8, ptr %45, align 4
  %65 = or i8 %64, 1
  store i8 %65, ptr %45, align 4
  br label %66

66:                                               ; preds = %61, %55
  %67 = phi i32 [ %62, %61 ], [ %44, %55 ]
  %68 = and i32 %1, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %147, label %70

70:                                               ; preds = %66, %53
  %71 = phi i32 [ %54, %53 ], [ %67, %66 ]
  %72 = getelementptr inbounds %struct.scsi_cd, ptr %9, i32 0, i32 5
  %73 = load i8, ptr %72, align 4
  %74 = load ptr, ptr %12, align 8
  %75 = call i32 @scsi_test_unit_ready(ptr noundef %74, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %7) #12
  %76 = icmp slt i32 %75, 0
  %77 = and i32 %75, 16711680
  %78 = icmp eq i32 %77, 65536
  %79 = or i1 %76, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %70
  %81 = trunc i32 %75 to i8
  %82 = and i8 %81, -6
  switch i8 %82, label %83 [
    i8 16, label %95
    i8 0, label %95
  ]

83:                                               ; preds = %80
  %84 = and i32 %75, 254
  %85 = icmp eq i32 %84, 34
  br i1 %85, label %95, label %86

86:                                               ; preds = %83, %70
  %87 = load i8, ptr %7, align 8
  %88 = and i8 %87, 112
  %89 = icmp eq i8 %88, 112
  %90 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 2
  %91 = load i8, ptr %90, align 2
  %92 = icmp ne i8 %91, 58
  %93 = select i1 %89, i1 %92, i1 false
  %94 = select i1 %93, i8 32, i8 0
  br label %95

95:                                               ; preds = %86, %83, %80, %80
  %96 = phi i8 [ 32, %83 ], [ %94, %86 ], [ 32, %80 ], [ 32, %80 ]
  %97 = load i8, ptr %72, align 4
  %98 = and i8 %97, -33
  %99 = or i8 %98, %96
  store i8 %99, ptr %72, align 4
  %100 = lshr i8 %73, 5
  %101 = and i8 %100, 1
  %102 = lshr exact i8 %96, 5
  %103 = icmp eq i8 %101, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %95
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds %struct.scsi_device, ptr %105, i32 0, i32 41
  %107 = load i64, ptr %106, align 4
  %108 = or i64 %107, 2
  store i64 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %104, %95
  %110 = load ptr, ptr %12, align 8
  %111 = getelementptr inbounds %struct.scsi_device, ptr %110, i32 0, i32 41
  %112 = load i64, ptr %111, align 4
  %113 = and i64 %112, 2
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i8, ptr %45, align 4
  br label %122

117:                                              ; preds = %109
  %118 = or i32 %71, 1
  %119 = and i64 %112, -3
  store i64 %119, ptr %111, align 4
  %120 = load i8, ptr %45, align 4
  %121 = or i8 %120, 1
  store i8 %121, ptr %45, align 4
  br label %122

122:                                              ; preds = %117, %115
  %123 = phi i8 [ %121, %117 ], [ %116, %115 ]
  %124 = phi i32 [ %118, %117 ], [ %71, %115 ]
  %125 = and i8 %123, 4
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %122
  %128 = and i8 %123, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = and i8 %123, 2
  %132 = icmp eq i8 %131, 0
  %133 = getelementptr inbounds %struct.scsi_cd, ptr %9, i32 0, i32 6
  br i1 %132, label %143, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %133, align 8
  %136 = add i32 %135, 1
  store i32 %136, ptr %133, align 8
  %137 = icmp sgt i32 %135, 8
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load ptr, ptr %12, align 8
  %140 = getelementptr inbounds %struct.scsi_cd, ptr %9, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %139, ptr noundef %140, ptr noundef nonnull @.str.6) #12
  %141 = load i8, ptr %45, align 4
  %142 = or i8 %141, 4
  br label %144

143:                                              ; preds = %130
  store i32 0, ptr %133, align 8
  br label %144

144:                                              ; preds = %143, %138, %134, %127
  %145 = phi i8 [ %123, %143 ], [ %142, %138 ], [ %123, %134 ], [ %123, %127 ]
  %146 = and i8 %145, -4
  store i8 %146, ptr %45, align 4
  br label %147

147:                                              ; preds = %144, %122, %66, %3
  %148 = phi i32 [ %124, %144 ], [ 0, %3 ], [ %67, %66 ], [ %124, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_tray_move(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_lock_door(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_select_speed(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_get_last_session(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_get_mcn(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_audio_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_packet(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = load i8, ptr %1, align 4
  %6 = icmp eq i8 %5, 81
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.scsi_cd, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 41
  %11 = load i64, ptr %10, align 4
  %12 = and i64 %11, 68719476736
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 3000, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = tail call i32 @sr_do_ioctl(ptr noundef %4, ptr noundef %1) #12
  %21 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %7
  %24 = phi i32 [ %22, %19 ], [ -95, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_read_cdda_bpc(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = alloca %struct.scsi_sense_hdr, align 8
  %7 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @scsi_alloc_request(ptr noundef %10, i32 noundef 34, i32 noundef 0) #12
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %11 to i32
  br label %76

15:                                               ; preds = %5
  %16 = mul i32 %3, 2352
  %17 = load ptr, ptr %9, align 4
  %18 = tail call i32 @blk_rq_map_user(ptr noundef %17, ptr noundef %11, ptr noundef null, ptr noundef %1, i32 noundef %16, i32 noundef 3264) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %15
  %21 = getelementptr %struct.request, ptr %11, i32 1, i32 4
  %22 = load ptr, ptr %21, align 4
  store i8 -66, ptr %22, align 1
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr i8, ptr %23, i32 1
  store i8 4, ptr %24, align 1
  %25 = lshr i32 %2, 24
  %26 = trunc i32 %25 to i8
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr i8, ptr %27, i32 2
  store i8 %26, ptr %28, align 1
  %29 = lshr i32 %2, 16
  %30 = trunc i32 %29 to i8
  %31 = load ptr, ptr %21, align 4
  %32 = getelementptr i8, ptr %31, i32 3
  store i8 %30, ptr %32, align 1
  %33 = lshr i32 %2, 8
  %34 = trunc i32 %33 to i8
  %35 = load ptr, ptr %21, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  store i8 %34, ptr %36, align 1
  %37 = trunc i32 %2 to i8
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr i8, ptr %38, i32 5
  store i8 %37, ptr %39, align 1
  %40 = lshr i32 %3, 16
  %41 = trunc i32 %40 to i8
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr i8, ptr %42, i32 6
  store i8 %41, ptr %43, align 1
  %44 = lshr i32 %3, 8
  %45 = trunc i32 %44 to i8
  %46 = load ptr, ptr %21, align 4
  %47 = getelementptr i8, ptr %46, i32 7
  store i8 %45, ptr %47, align 1
  %48 = trunc i32 %3 to i8
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr i8, ptr %49, i32 8
  store i8 %48, ptr %50, align 1
  %51 = load ptr, ptr %21, align 4
  %52 = getelementptr i8, ptr %51, i32 9
  store i8 -8, ptr %52, align 1
  %53 = getelementptr %struct.request, ptr %11, i32 1, i32 5
  store i16 12, ptr %53, align 4
  %54 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 7
  store i32 6000, ptr %54, align 4
  %55 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 10
  %56 = load ptr, ptr %55, align 8
  %57 = tail call zeroext i8 @blk_execute_rq(ptr noundef %11, i1 noundef zeroext false) #12
  %58 = getelementptr %struct.request, ptr %11, i32 1, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !12
  %62 = getelementptr %struct.request, ptr %11, i32 1, i32 9
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr %struct.request, ptr %11, i32 1, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = call zeroext i1 @scsi_normalize_sense(ptr noundef %63, i32 noundef %65, ptr noundef nonnull %6) #12
  %67 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 1
  %68 = load i8, ptr %67, align 1
  store i8 %68, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %69

69:                                               ; preds = %61, %20
  %70 = phi i32 [ -5, %61 ], [ 0, %20 ]
  %71 = call i32 @blk_rq_unmap_user(ptr noundef %56) #12
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 %70, i32 -14
  br label %74

74:                                               ; preds = %69, %15
  %75 = phi i32 [ %18, %15 ], [ %73, %69 ]
  call void @blk_mq_free_request(ptr noundef %11) #12
  br label %76

76:                                               ; preds = %74, %13
  %77 = phi i32 [ %14, %13 ], [ %75, %74 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_do_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_mode_sense(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_number_of_slots(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_cd_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_get_last_written(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_cdrom(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sr_runtime_suspend(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 0, i32 -16
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @scsi_alloc_sgtables(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_dump_rq_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_free_sgtables(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i64 2148951508}
!9 = !{i64 2148947332}
!10 = !{i64 2148947407, i64 2148947434, i64 2148947481, i64 2148947503, i64 2148947531, i64 2148947551}
!11 = !{i64 2148974511}
!12 = !{!"auto-init"}
!13 = !{i64 2148170049}
!14 = !{i64 566983, i64 2148056954, i64 2148056980, i64 2148057027, i64 2148057049, i64 2148057077, i64 2148057097}
!15 = !{i64 2148072184, i64 2148072216, i64 2148072245, i64 2148072279, i64 2148072310, i64 2148072333}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149019496}
!18 = !{i64 2148069827, i64 2148069859, i64 2148069888, i64 2148069922, i64 2148069953, i64 2148069976}
!19 = !{!"branch_weights", i32 1, i32 2000}
