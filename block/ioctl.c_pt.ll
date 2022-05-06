; ModuleID = '/llk/IR/block/ioctl.c_pt.bc'
source_filename = "../block/ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pr_clear = type { i64, i32, i32 }
%struct.pr_reservation = type { i64, i32, i32 }
%struct.pr_registration = type { i64, i64, i32, i32 }
%struct.blkpg_partition = type { i64, i64, i32, [64 x i8], [64 x i8] }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blkpg_ioctl_arg = type { i32, i32, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.pr_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pr_preempt = type { i64, i64, i32, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blkdev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pr_clear, align 8
  %5 = alloca %struct.pr_reservation, align 8
  %6 = alloca %struct.pr_reservation, align 8
  %7 = alloca %struct.pr_registration, align 8
  %8 = alloca [2 x i64], align 8
  %9 = alloca ptr, align 4
  %10 = alloca %struct.blkpg_partition, align 8
  %11 = alloca %struct.hd_geometry, align 8
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @I_BDEV(ptr noundef %14) #6
  %16 = inttoptr i32 %2 to ptr
  %17 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %18, -65
  %22 = lshr i32 %20, 5
  %23 = and i32 %22, 64
  %24 = or i32 %23, %21
  switch i32 %1, label %681 [
    i32 769, label %25
    i32 4713, label %56
    i32 4707, label %133
    i32 4709, label %133
    i32 4704, label %150
    i32 -2147216784, label %162
    i32 1074008689, label %175
    i32 -2147216782, label %206
    i32 -1069018509, label %691
    i32 4705, label %216
    i32 4701, label %220
    i32 4727, label %248
    i32 4733, label %250
    i32 4735, label %252
    i32 -2146954624, label %307
    i32 -1072688510, label %691
    i32 1074795139, label %691
    i32 1074795142, label %691
    i32 1074795143, label %691
    i32 1074795144, label %691
    i32 -2147216764, label %318
    i32 -2147216763, label %325
    i32 4702, label %332
    i32 4712, label %357
    i32 4731, label %374
    i32 4728, label %385
    i32 4729, label %396
    i32 4730, label %407
    i32 4732, label %453
    i32 4711, label %460
    i32 4734, label %473
    i32 4706, label %488
    i32 4708, label %488
    i32 4703, label %498
    i32 4724, label %691
    i32 4725, label %691
    i32 4726, label %691
    i32 1075343560, label %509
    i32 1074819273, label %550
    i32 1074819274, label %592
    i32 1075343563, label %634
    i32 1075343564, label %636
    i32 1074819277, label %638
  ]

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %27 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.block_device_operations, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %29
  store i64 0, ptr %11, align 8
  %36 = load i64, ptr %15, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.hd_geometry, ptr %11, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = call i32 %33(ptr noundef %15, ptr noundef nonnull %11) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %16, i32 8, i32 -1090519040) #7, !srcloc !8
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = tail call ptr @llvm.thread.pointer() #6
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #8, !srcloc !9
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %51 = call i32 @arm_copy_to_user(ptr noundef nonnull %16, ptr noundef nonnull %11, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 -14
  br label %54

54:                                               ; preds = %45, %41, %35, %29, %25
  %55 = phi i32 [ -22, %25 ], [ -25, %29 ], [ %39, %35 ], [ -14, %41 ], [ %53, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  br label %691

56:                                               ; preds = %3
  %57 = tail call ptr @llvm.thread.pointer() #6
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #8, !srcloc !9
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %62 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %16, i32 -1090519041) #6, !srcloc !12
  %63 = extractvalue { i32, i32 } %62, 0
  %64 = extractvalue { i32, i32 } %62, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %691

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.blkpg_ioctl_arg, ptr %16, i32 0, i32 3
  %68 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #8, !srcloc !9
  %69 = and i32 %68, -13
  %70 = or i32 %69, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %71 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %67, i32 -1090519041) #6, !srcloc !13
  %72 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %691

74:                                               ; preds = %66
  %75 = extractvalue { i32, i32 } %71, 1
  %76 = inttoptr i32 %75 to ptr
  %77 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %78 = load ptr, ptr %77, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %10) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %10, i8 0, i32 152, i1 false) #6, !annotation !14
  %79 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %79, label %80, label %131

80:                                               ; preds = %74
  %81 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %76, i32 152, i32 -1090519040) #7, !srcloc !15
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90, !prof !16

84:                                               ; preds = %80
  %85 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #8, !srcloc !9
  %86 = and i32 %85, -13
  %87 = or i32 %86, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %88 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %76, i32 noundef 152) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90, !prof !16

90:                                               ; preds = %84, %80
  %91 = phi i32 [ %88, %84 ], [ 152, %80 ]
  %92 = sub i32 152, %91
  %93 = getelementptr i8, ptr %10, i32 %92
  call void @llvm.memset.p0.i32(ptr align 1 %93, i8 0, i32 %91, i1 false) #6
  br label %131

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 15
  %96 = load i8, ptr %95, align 8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.blkpg_partition, ptr %10, i32 0, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %131, label %102

102:                                              ; preds = %98
  %103 = icmp eq i32 %64, 2
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = call i32 @bdev_del_partition(ptr noundef %78, i32 noundef %100) #6
  br label %131

106:                                              ; preds = %102
  %107 = load i64, ptr %10, align 8
  %108 = ashr i64 %107, 9
  %109 = getelementptr inbounds %struct.blkpg_partition, ptr %10, i32 0, i32 1
  %110 = load i64, ptr %109, align 8
  %111 = ashr i64 %110, 9
  switch i32 %64, label %131 [
    i32 1, label %112
    i32 3, label %129
  ]

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 18
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.request_queue, ptr %114, i32 0, i32 32, i32 9
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  %120 = add i32 %118, -1
  %121 = select i1 %119, i32 511, i32 %120
  br label %122

122:                                              ; preds = %116, %112
  %123 = phi i32 [ 511, %112 ], [ %121, %116 ]
  %124 = zext i32 %123 to i64
  %125 = and i64 %107, %124
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = call i32 @bdev_add_partition(ptr noundef %78, i32 noundef %100, i64 noundef %108, i64 noundef %111) #6
  br label %131

129:                                              ; preds = %106
  %130 = call i32 @bdev_resize_partition(ptr noundef %78, i32 noundef %100, i64 noundef %108, i64 noundef %111) #6
  br label %131

131:                                              ; preds = %129, %127, %122, %106, %104, %98, %94, %90, %74
  %132 = phi i32 [ %105, %104 ], [ %130, %129 ], [ %128, %127 ], [ -13, %74 ], [ -22, %94 ], [ -22, %98 ], [ -22, %122 ], [ -22, %106 ], [ -14, %90 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %10) #6
  br label %691

133:                                              ; preds = %3, %3
  %134 = icmp eq i32 %2, 0
  br i1 %134, label %691, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.gendisk, ptr %137, i32 0, i32 15
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.backing_dev_info, ptr %139, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = shl i32 %141, 3
  %143 = and i32 %142, 8388600
  %144 = tail call ptr @llvm.thread.pointer() #6
  %145 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 3
  %146 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %145) #8, !srcloc !9
  %147 = and i32 %146, -13
  %148 = or i32 %147, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %149 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %16, i32 %143, i32 -1090519041) #6, !srcloc !17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %691

150:                                              ; preds = %3
  %151 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 1
  %152 = load i64, ptr %151, align 8
  %153 = icmp ugt i64 %152, 4294967295
  br i1 %153, label %691, label %154

154:                                              ; preds = %150
  %155 = trunc i64 %152 to i32
  %156 = tail call ptr @llvm.thread.pointer() #6
  %157 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 3
  %158 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %157) #8, !srcloc !9
  %159 = and i32 %158, -13
  %160 = or i32 %159, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %160) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %161 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %155, i32 -1090519041) #6, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %158) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %691

162:                                              ; preds = %3
  %163 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 7
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.inode, ptr %164, i32 0, i32 19
  %166 = load i8, ptr %165, align 2
  %167 = zext i8 %166 to i32
  %168 = shl nuw i32 1, %167
  %169 = tail call ptr @llvm.thread.pointer() #6
  %170 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 3
  %171 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %170) #8, !srcloc !9
  %172 = and i32 %171, -13
  %173 = or i32 %172, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %173) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %174 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %168, i32 -1090519041) #6, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %691

175:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  store ptr %15, ptr %9, align 4
  %176 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %176, label %177, label %204

177:                                              ; preds = %175
  %178 = icmp eq i32 %2, 0
  br i1 %178, label %204, label %179

179:                                              ; preds = %177
  %180 = tail call ptr @llvm.thread.pointer() #6
  %181 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 3
  %182 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %181) #8, !srcloc !9
  %183 = and i32 %182, -13
  %184 = or i32 %183, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %184) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %185 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %16, i32 -1090519041) #6, !srcloc !20
  %186 = extractvalue { i32, i32 } %185, 0
  %187 = extractvalue { i32, i32 } %185, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %182) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %188 = icmp eq i32 %186, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %179
  %190 = and i32 %18, 128
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = tail call i32 @set_blocksize(ptr noundef %15, i32 noundef %187) #6
  br label %204

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 5
  %196 = load i32, ptr %195, align 4
  %197 = or i32 %24, 128
  %198 = call ptr @blkdev_get_by_dev(i32 noundef %196, i32 noundef %197, ptr noundef nonnull %9) #6
  %199 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %204, label %200

200:                                              ; preds = %194
  %201 = load ptr, ptr %9, align 4
  %202 = call i32 @set_blocksize(ptr noundef %201, i32 noundef %187) #6
  %203 = load ptr, ptr %9, align 4
  call void @blkdev_put(ptr noundef %203, i32 noundef %197) #6
  br label %204

204:                                              ; preds = %200, %194, %192, %179, %177, %175
  %205 = phi i32 [ %193, %192 ], [ %202, %200 ], [ -13, %175 ], [ -22, %177 ], [ -14, %179 ], [ -16, %194 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %691

206:                                              ; preds = %3
  %207 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 1
  %208 = load i64, ptr %207, align 8
  %209 = shl i64 %208, 9
  %210 = tail call ptr @llvm.thread.pointer() #6
  %211 = getelementptr inbounds %struct.thread_info, ptr %210, i32 0, i32 3
  %212 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %211) #8, !srcloc !9
  %213 = and i32 %212, -13
  %214 = or i32 %213, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %214) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %215 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i64 %209, i32 -1090519041) #6, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %212) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %691

216:                                              ; preds = %3
  %217 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %217, label %218, label %691

218:                                              ; preds = %216
  %219 = tail call i32 @fsync_bdev(ptr noundef %15) #6
  tail call void @invalidate_bdev(ptr noundef %15) #6
  br label %691

220:                                              ; preds = %3
  %221 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %221, label %222, label %691

222:                                              ; preds = %220
  %223 = tail call ptr @llvm.thread.pointer() #6
  %224 = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 3
  %225 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %224) #8, !srcloc !9
  %226 = and i32 %225, -13
  %227 = or i32 %226, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %227) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %228 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %16, i32 -1090519041) #6, !srcloc !22
  %229 = extractvalue { i32, i32 } %228, 0
  %230 = extractvalue { i32, i32 } %228, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %225) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %231 = icmp eq i32 %229, 0
  br i1 %231, label %232, label %691

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %struct.gendisk, ptr %234, i32 0, i32 8
  %236 = load ptr, ptr %235, align 8
  %237 = getelementptr inbounds %struct.block_device_operations, ptr %236, i32 0, i32 9
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %232
  %241 = icmp ne i32 %230, 0
  %242 = tail call i32 %238(ptr noundef %15, i1 noundef zeroext %241) #6
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %678

244:                                              ; preds = %240, %232
  %245 = icmp ne i32 %230, 0
  %246 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 4
  %247 = zext i1 %245 to i8
  store i8 %247, ptr %246, align 8
  br label %691

248:                                              ; preds = %3
  %249 = tail call fastcc i32 @blk_ioctl_discard(ptr noundef %15, i32 noundef %24, i32 noundef %2, i32 noundef 0) #6
  br label %678

250:                                              ; preds = %3
  %251 = tail call fastcc i32 @blk_ioctl_discard(ptr noundef %15, i32 noundef %24, i32 noundef %2, i32 noundef 1) #6
  br label %678

252:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #6, !annotation !14
  %253 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 7
  %254 = load ptr, ptr %253, align 4
  %255 = and i32 %18, 2
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %305, label %257

257:                                              ; preds = %252
  %258 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 16, i32 -1090519040) #7, !srcloc !15
  %259 = extractvalue { i32, i32 } %258, 0
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %269, !prof !16

261:                                              ; preds = %257
  %262 = tail call ptr @llvm.thread.pointer() #6
  %263 = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 3
  %264 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %263) #8, !srcloc !9
  %265 = and i32 %264, -13
  %266 = or i32 %265, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %266) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %267 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %16, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %264) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %273, label %269, !prof !16

269:                                              ; preds = %261, %257
  %270 = phi i32 [ %267, %261 ], [ 16, %257 ]
  %271 = sub i32 16, %270
  %272 = getelementptr i8, ptr %8, i32 %271
  call void @llvm.memset.p0.i32(ptr align 1 %272, i8 0, i32 %270, i1 false) #6
  br label %305

273:                                              ; preds = %261
  %274 = load i64, ptr %8, align 8
  %275 = getelementptr inbounds [2 x i64], ptr %8, i32 0, i32 1
  %276 = load i64, ptr %275, align 8
  %277 = add i64 %274, -1
  %278 = add i64 %277, %276
  %279 = and i64 %274, 511
  %280 = icmp eq i64 %279, 0
  %281 = and i64 %276, 511
  %282 = icmp eq i64 %281, 0
  %283 = select i1 %280, i1 %282, i1 false
  br i1 %283, label %284, label %305

284:                                              ; preds = %273
  %285 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 1
  %286 = load i64, ptr %285, align 8
  %287 = shl i64 %286, 9
  %288 = icmp uge i64 %278, %287
  %289 = icmp ult i64 %278, %274
  %290 = select i1 %288, i1 true, i1 %289
  br i1 %290, label %305, label %291

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.inode, ptr %254, i32 0, i32 9
  %293 = load ptr, ptr %292, align 8
  %294 = getelementptr inbounds %struct.address_space, ptr %293, i32 0, i32 2
  call void @down_write(ptr noundef %294) #6
  %295 = call i32 @truncate_bdev_range(ptr noundef %15, i32 noundef %24, i64 noundef %274, i64 noundef %278) #6
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %291
  %298 = lshr i64 %274, 9
  %299 = lshr i64 %276, 9
  %300 = call i32 @blkdev_issue_zeroout(ptr noundef %15, i64 noundef %298, i64 noundef %299, i32 noundef 3264, i32 noundef 1) #6
  br label %301

301:                                              ; preds = %297, %291
  %302 = phi i32 [ %295, %291 ], [ %300, %297 ]
  %303 = load ptr, ptr %292, align 8
  %304 = getelementptr inbounds %struct.address_space, ptr %303, i32 0, i32 2
  call void @up_write(ptr noundef %304) #6
  br label %305

305:                                              ; preds = %301, %284, %273, %269, %252
  %306 = phi i32 [ %302, %301 ], [ -9, %252 ], [ -22, %273 ], [ -22, %284 ], [ -14, %269 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  br label %678

307:                                              ; preds = %3
  %308 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %309 = load ptr, ptr %308, align 8
  %310 = getelementptr inbounds %struct.gendisk, ptr %309, i32 0, i32 24
  %311 = load i64, ptr %310, align 8
  %312 = tail call ptr @llvm.thread.pointer() #6
  %313 = getelementptr inbounds %struct.thread_info, ptr %312, i32 0, i32 3
  %314 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %313) #8, !srcloc !9
  %315 = and i32 %314, -13
  %316 = or i32 %315, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %316) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %317 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i64 %311, i32 -1090519041) #6, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %314) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

318:                                              ; preds = %3
  %319 = tail call ptr @llvm.thread.pointer() #6
  %320 = getelementptr inbounds %struct.thread_info, ptr %319, i32 0, i32 3
  %321 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %320) #8, !srcloc !9
  %322 = and i32 %321, -13
  %323 = or i32 %322, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %323) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %324 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 0, i32 -1090519041) #6, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %321) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

325:                                              ; preds = %3
  %326 = tail call ptr @llvm.thread.pointer() #6
  %327 = getelementptr inbounds %struct.thread_info, ptr %326, i32 0, i32 3
  %328 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %327) #8, !srcloc !9
  %329 = and i32 %328, -13
  %330 = or i32 %329, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %330) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %331 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 0, i32 -1090519041) #6, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %328) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

332:                                              ; preds = %3
  %333 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 4
  %334 = load i8, ptr %333, align 8, !range !24
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %338 = load ptr, ptr %337, align 8
  %339 = getelementptr inbounds %struct.gendisk, ptr %338, i32 0, i32 7
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.block_device, ptr %340, i32 0, i32 4
  %342 = load i8, ptr %341, align 8, !range !24
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %336
  %345 = getelementptr inbounds %struct.gendisk, ptr %338, i32 0, i32 12
  %346 = load volatile i32, ptr %345, align 4
  %347 = lshr i32 %346, 1
  %348 = and i32 %347, 1
  br label %349

349:                                              ; preds = %344, %336, %332
  %350 = phi i32 [ 1, %332 ], [ 1, %336 ], [ %348, %344 ]
  %351 = tail call ptr @llvm.thread.pointer() #6
  %352 = getelementptr inbounds %struct.thread_info, ptr %351, i32 0, i32 3
  %353 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %352) #8, !srcloc !9
  %354 = and i32 %353, -13
  %355 = or i32 %354, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %355) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %356 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %350, i32 -1090519041) #6, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %353) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

357:                                              ; preds = %3
  %358 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 18
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %366, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.request_queue, ptr %359, i32 0, i32 32, i32 9
  %363 = load i32, ptr %362, align 4
  %364 = icmp eq i32 %363, 0
  %365 = select i1 %364, i32 512, i32 %363
  br label %366

366:                                              ; preds = %361, %357
  %367 = phi i32 [ 512, %357 ], [ %365, %361 ]
  %368 = tail call ptr @llvm.thread.pointer() #6
  %369 = getelementptr inbounds %struct.thread_info, ptr %368, i32 0, i32 3
  %370 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %369) #8, !srcloc !9
  %371 = and i32 %370, -13
  %372 = or i32 %371, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %372) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %373 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %367, i32 -1090519041) #6, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %370) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

374:                                              ; preds = %3
  %375 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 18
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr inbounds %struct.request_queue, ptr %376, i32 0, i32 32, i32 8
  %378 = load i32, ptr %377, align 4
  %379 = tail call ptr @llvm.thread.pointer() #6
  %380 = getelementptr inbounds %struct.thread_info, ptr %379, i32 0, i32 3
  %381 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %380) #8, !srcloc !9
  %382 = and i32 %381, -13
  %383 = or i32 %382, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %383) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %384 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %378, i32 -1090519041) #6, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %381) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

385:                                              ; preds = %3
  %386 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 18
  %387 = load ptr, ptr %386, align 4
  %388 = getelementptr inbounds %struct.request_queue, ptr %387, i32 0, i32 32, i32 11
  %389 = load i32, ptr %388, align 4
  %390 = tail call ptr @llvm.thread.pointer() #6
  %391 = getelementptr inbounds %struct.thread_info, ptr %390, i32 0, i32 3
  %392 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %391) #8, !srcloc !9
  %393 = and i32 %392, -13
  %394 = or i32 %393, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %394) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %395 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %389, i32 -1090519041) #6, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %392) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

396:                                              ; preds = %3
  %397 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 18
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr inbounds %struct.request_queue, ptr %398, i32 0, i32 32, i32 12
  %400 = load i32, ptr %399, align 4
  %401 = tail call ptr @llvm.thread.pointer() #6
  %402 = getelementptr inbounds %struct.thread_info, ptr %401, i32 0, i32 3
  %403 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %402) #8, !srcloc !9
  %404 = and i32 %403, -13
  %405 = or i32 %404, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %405) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %406 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %400, i32 -1090519041) #6, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %403) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

407:                                              ; preds = %3
  %408 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 18
  %409 = load ptr, ptr %408, align 4
  %410 = getelementptr inbounds %struct.request_queue, ptr %409, i32 0, i32 32, i32 24
  %411 = load i8, ptr %410, align 2
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %445

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 15
  %415 = load i8, ptr %414, align 8
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %442, label %417

417:                                              ; preds = %413
  %418 = load i64, ptr %15, align 8
  %419 = getelementptr inbounds %struct.request_queue, ptr %409, i32 0, i32 32, i32 8
  %420 = load i32, ptr %419, align 4
  %421 = getelementptr inbounds %struct.request_queue, ptr %409, i32 0, i32 32, i32 11
  %422 = load i32, ptr %421, align 4
  %423 = tail call i32 @llvm.umax.i32(i32 %420, i32 %422) #6
  %424 = lshr i32 %423, 9
  %425 = icmp ult i64 %418, 4294967296
  br i1 %425, label %426, label %429, !prof !16

426:                                              ; preds = %417
  %427 = trunc i64 %418 to i32
  %428 = urem i32 %427, %424
  br label %434

429:                                              ; preds = %417
  %430 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %424, i64 %418) #7, !srcloc !25
  %431 = extractvalue { i64, i64 } %430, 0
  %432 = lshr i64 %431, 32
  %433 = trunc i64 %432 to i32
  br label %434

434:                                              ; preds = %429, %426
  %435 = phi i32 [ %428, %426 ], [ %433, %429 ]
  %436 = mul i32 %435, -512
  %437 = getelementptr inbounds %struct.request_queue, ptr %409, i32 0, i32 32, i32 10
  %438 = load i32, ptr %437, align 4
  %439 = add i32 %438, %423
  %440 = add i32 %439, %436
  %441 = urem i32 %440, %423
  br label %445

442:                                              ; preds = %413
  %443 = getelementptr inbounds %struct.request_queue, ptr %409, i32 0, i32 32, i32 10
  %444 = load i32, ptr %443, align 4
  br label %445

445:                                              ; preds = %442, %434, %407
  %446 = phi i32 [ %441, %434 ], [ %444, %442 ], [ -1, %407 ]
  %447 = tail call ptr @llvm.thread.pointer() #6
  %448 = getelementptr inbounds %struct.thread_info, ptr %447, i32 0, i32 3
  %449 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %448) #8, !srcloc !9
  %450 = and i32 %449, -13
  %451 = or i32 %450, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %451) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %452 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %446, i32 -1090519041) #6, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %449) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

453:                                              ; preds = %3
  %454 = tail call ptr @llvm.thread.pointer() #6
  %455 = getelementptr inbounds %struct.thread_info, ptr %454, i32 0, i32 3
  %456 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %455) #8, !srcloc !9
  %457 = and i32 %456, -13
  %458 = or i32 %457, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %458) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %459 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 0, i32 -1090519041) #6, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %456) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

460:                                              ; preds = %3
  %461 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 18
  %462 = load ptr, ptr %461, align 4
  %463 = getelementptr inbounds %struct.request_queue, ptr %462, i32 0, i32 32, i32 6
  %464 = load i32, ptr %463, align 4
  %465 = tail call i32 @llvm.umin.i32(i32 %464, i32 65535) #6
  %466 = trunc i32 %465 to i16
  %467 = tail call ptr @llvm.thread.pointer() #6
  %468 = getelementptr inbounds %struct.thread_info, ptr %467, i32 0, i32 3
  %469 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %468) #8, !srcloc !9
  %470 = and i32 %469, -13
  %471 = or i32 %470, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %471) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %472 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i16 %466, i32 -1090519041) #6, !srcloc !26
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %469) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

473:                                              ; preds = %3
  %474 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 18
  %475 = load ptr, ptr %474, align 4
  %476 = getelementptr inbounds %struct.request_queue, ptr %475, i32 0, i32 11
  %477 = load volatile i32, ptr %476, align 4
  %478 = trunc i32 %477 to i16
  %479 = lshr i16 %478, 6
  %480 = and i16 %479, 1
  %481 = xor i16 %480, 1
  %482 = tail call ptr @llvm.thread.pointer() #6
  %483 = getelementptr inbounds %struct.thread_info, ptr %482, i32 0, i32 3
  %484 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %483) #8, !srcloc !9
  %485 = and i32 %484, -13
  %486 = or i32 %485, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %486) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %487 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i16 %481, i32 -1090519041) #6, !srcloc !26
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %484) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %678

488:                                              ; preds = %3, %3
  %489 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %489, label %490, label %691

490:                                              ; preds = %488
  %491 = lshr i32 %2, 3
  %492 = and i32 %491, 1048575
  %493 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %494 = load ptr, ptr %493, align 8
  %495 = getelementptr inbounds %struct.gendisk, ptr %494, i32 0, i32 15
  %496 = load ptr, ptr %495, align 4
  %497 = getelementptr inbounds %struct.backing_dev_info, ptr %496, i32 0, i32 3
  store i32 %492, ptr %497, align 4
  br label %691

498:                                              ; preds = %3
  %499 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %499, label %500, label %691

500:                                              ; preds = %498
  %501 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 15
  %502 = load i8, ptr %501, align 8
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %504, label %691

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %506 = load ptr, ptr %505, align 8
  %507 = and i32 %24, -129
  %508 = tail call i32 @disk_scan_partitions(ptr noundef %506, i32 noundef %507) #6
  br label %678

509:                                              ; preds = %3
  %510 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %511 = load ptr, ptr %510, align 8
  %512 = getelementptr inbounds %struct.gendisk, ptr %511, i32 0, i32 8
  %513 = load ptr, ptr %512, align 8
  %514 = getelementptr inbounds %struct.block_device_operations, ptr %513, i32 0, i32 15
  %515 = load ptr, ptr %514, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #6, !annotation !14
  %516 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %516, label %517, label %548

517:                                              ; preds = %509
  %518 = icmp eq ptr %515, null
  br i1 %518, label %548, label %519

519:                                              ; preds = %517
  %520 = load ptr, ptr %515, align 4
  %521 = icmp eq ptr %520, null
  br i1 %521, label %548, label %522

522:                                              ; preds = %519
  %523 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 24, i32 -1090519040) #7, !srcloc !15
  %524 = extractvalue { i32, i32 } %523, 0
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %534, !prof !16

526:                                              ; preds = %522
  %527 = tail call ptr @llvm.thread.pointer() #6
  %528 = getelementptr inbounds %struct.thread_info, ptr %527, i32 0, i32 3
  %529 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %528) #8, !srcloc !9
  %530 = and i32 %529, -13
  %531 = or i32 %530, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %531) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %532 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %16, i32 noundef 24) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %529) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %538, label %534, !prof !16

534:                                              ; preds = %526, %522
  %535 = phi i32 [ %532, %526 ], [ 24, %522 ]
  %536 = sub i32 24, %535
  %537 = getelementptr i8, ptr %7, i32 %536
  call void @llvm.memset.p0.i32(ptr align 1 %537, i8 0, i32 %535, i1 false) #6
  br label %548

538:                                              ; preds = %526
  %539 = getelementptr inbounds %struct.pr_registration, ptr %7, i32 0, i32 2
  %540 = load i32, ptr %539, align 8
  %541 = icmp ult i32 %540, 2
  br i1 %541, label %542, label %548

542:                                              ; preds = %538
  %543 = load ptr, ptr %515, align 4
  %544 = load i64, ptr %7, align 8
  %545 = getelementptr inbounds %struct.pr_registration, ptr %7, i32 0, i32 1
  %546 = load i64, ptr %545, align 8
  %547 = call i32 %543(ptr noundef %15, i64 noundef %544, i64 noundef %546, i32 noundef %540) #6
  br label %548

548:                                              ; preds = %542, %538, %534, %519, %517, %509
  %549 = phi i32 [ %547, %542 ], [ -1, %509 ], [ -95, %519 ], [ -95, %517 ], [ -95, %538 ], [ -14, %534 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  br label %678

550:                                              ; preds = %3
  %551 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %552 = load ptr, ptr %551, align 8
  %553 = getelementptr inbounds %struct.gendisk, ptr %552, i32 0, i32 8
  %554 = load ptr, ptr %553, align 8
  %555 = getelementptr inbounds %struct.block_device_operations, ptr %554, i32 0, i32 15
  %556 = load ptr, ptr %555, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #6, !annotation !14
  %557 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %557, label %558, label %590

558:                                              ; preds = %550
  %559 = icmp eq ptr %556, null
  br i1 %559, label %590, label %560

560:                                              ; preds = %558
  %561 = getelementptr inbounds %struct.pr_ops, ptr %556, i32 0, i32 1
  %562 = load ptr, ptr %561, align 4
  %563 = icmp eq ptr %562, null
  br i1 %563, label %590, label %564

564:                                              ; preds = %560
  %565 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 16, i32 -1090519040) #7, !srcloc !15
  %566 = extractvalue { i32, i32 } %565, 0
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %576, !prof !16

568:                                              ; preds = %564
  %569 = tail call ptr @llvm.thread.pointer() #6
  %570 = getelementptr inbounds %struct.thread_info, ptr %569, i32 0, i32 3
  %571 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %570) #8, !srcloc !9
  %572 = and i32 %571, -13
  %573 = or i32 %572, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %573) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %574 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %16, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %571) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %580, label %576, !prof !16

576:                                              ; preds = %568, %564
  %577 = phi i32 [ %574, %568 ], [ 16, %564 ]
  %578 = sub i32 16, %577
  %579 = getelementptr i8, ptr %6, i32 %578
  call void @llvm.memset.p0.i32(ptr align 1 %579, i8 0, i32 %577, i1 false) #6
  br label %590

580:                                              ; preds = %568
  %581 = getelementptr inbounds %struct.pr_reservation, ptr %6, i32 0, i32 2
  %582 = load i32, ptr %581, align 4
  %583 = icmp ult i32 %582, 2
  br i1 %583, label %584, label %590

584:                                              ; preds = %580
  %585 = load ptr, ptr %561, align 4
  %586 = load i64, ptr %6, align 8
  %587 = getelementptr inbounds %struct.pr_reservation, ptr %6, i32 0, i32 1
  %588 = load i32, ptr %587, align 8
  %589 = call i32 %585(ptr noundef %15, i64 noundef %586, i32 noundef %588, i32 noundef %582) #6
  br label %590

590:                                              ; preds = %584, %580, %576, %560, %558, %550
  %591 = phi i32 [ %589, %584 ], [ -1, %550 ], [ -95, %560 ], [ -95, %558 ], [ -95, %580 ], [ -14, %576 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %678

592:                                              ; preds = %3
  %593 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %594 = load ptr, ptr %593, align 8
  %595 = getelementptr inbounds %struct.gendisk, ptr %594, i32 0, i32 8
  %596 = load ptr, ptr %595, align 8
  %597 = getelementptr inbounds %struct.block_device_operations, ptr %596, i32 0, i32 15
  %598 = load ptr, ptr %597, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #6, !annotation !14
  %599 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %599, label %600, label %632

600:                                              ; preds = %592
  %601 = icmp eq ptr %598, null
  br i1 %601, label %632, label %602

602:                                              ; preds = %600
  %603 = getelementptr inbounds %struct.pr_ops, ptr %598, i32 0, i32 2
  %604 = load ptr, ptr %603, align 4
  %605 = icmp eq ptr %604, null
  br i1 %605, label %632, label %606

606:                                              ; preds = %602
  %607 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 16, i32 -1090519040) #7, !srcloc !15
  %608 = extractvalue { i32, i32 } %607, 0
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %618, !prof !16

610:                                              ; preds = %606
  %611 = tail call ptr @llvm.thread.pointer() #6
  %612 = getelementptr inbounds %struct.thread_info, ptr %611, i32 0, i32 3
  %613 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %612) #8, !srcloc !9
  %614 = and i32 %613, -13
  %615 = or i32 %614, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %615) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %616 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %16, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %613) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %622, label %618, !prof !16

618:                                              ; preds = %610, %606
  %619 = phi i32 [ %616, %610 ], [ 16, %606 ]
  %620 = sub i32 16, %619
  %621 = getelementptr i8, ptr %5, i32 %620
  call void @llvm.memset.p0.i32(ptr align 1 %621, i8 0, i32 %619, i1 false) #6
  br label %632

622:                                              ; preds = %610
  %623 = getelementptr inbounds %struct.pr_reservation, ptr %5, i32 0, i32 2
  %624 = load i32, ptr %623, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %632

626:                                              ; preds = %622
  %627 = load ptr, ptr %603, align 4
  %628 = load i64, ptr %5, align 8
  %629 = getelementptr inbounds %struct.pr_reservation, ptr %5, i32 0, i32 1
  %630 = load i32, ptr %629, align 8
  %631 = call i32 %627(ptr noundef %15, i64 noundef %628, i32 noundef %630) #6
  br label %632

632:                                              ; preds = %626, %622, %618, %602, %600, %592
  %633 = phi i32 [ %631, %626 ], [ -1, %592 ], [ -95, %602 ], [ -95, %600 ], [ -95, %622 ], [ -14, %618 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %678

634:                                              ; preds = %3
  %635 = tail call fastcc i32 @blkdev_pr_preempt(ptr noundef %15, ptr noundef %16, i1 noundef zeroext false) #6
  br label %678

636:                                              ; preds = %3
  %637 = tail call fastcc i32 @blkdev_pr_preempt(ptr noundef %15, ptr noundef %16, i1 noundef zeroext true) #6
  br label %678

638:                                              ; preds = %3
  %639 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %640 = load ptr, ptr %639, align 8
  %641 = getelementptr inbounds %struct.gendisk, ptr %640, i32 0, i32 8
  %642 = load ptr, ptr %641, align 8
  %643 = getelementptr inbounds %struct.block_device_operations, ptr %642, i32 0, i32 15
  %644 = load ptr, ptr %643, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #6, !annotation !14
  %645 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %645, label %646, label %676

646:                                              ; preds = %638
  %647 = icmp eq ptr %644, null
  br i1 %647, label %676, label %648

648:                                              ; preds = %646
  %649 = getelementptr inbounds %struct.pr_ops, ptr %644, i32 0, i32 4
  %650 = load ptr, ptr %649, align 4
  %651 = icmp eq ptr %650, null
  br i1 %651, label %676, label %652

652:                                              ; preds = %648
  %653 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 16, i32 -1090519040) #7, !srcloc !15
  %654 = extractvalue { i32, i32 } %653, 0
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %664, !prof !16

656:                                              ; preds = %652
  %657 = tail call ptr @llvm.thread.pointer() #6
  %658 = getelementptr inbounds %struct.thread_info, ptr %657, i32 0, i32 3
  %659 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %658) #8, !srcloc !9
  %660 = and i32 %659, -13
  %661 = or i32 %660, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %661) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %662 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %16, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %659) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %668, label %664, !prof !16

664:                                              ; preds = %656, %652
  %665 = phi i32 [ %662, %656 ], [ 16, %652 ]
  %666 = sub i32 16, %665
  %667 = getelementptr i8, ptr %4, i32 %666
  call void @llvm.memset.p0.i32(ptr align 1 %667, i8 0, i32 %665, i1 false) #6
  br label %676

668:                                              ; preds = %656
  %669 = getelementptr inbounds %struct.pr_clear, ptr %4, i32 0, i32 1
  %670 = load i32, ptr %669, align 8
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %676

672:                                              ; preds = %668
  %673 = load ptr, ptr %649, align 4
  %674 = load i64, ptr %4, align 8
  %675 = call i32 %673(ptr noundef %15, i64 noundef %674) #6
  br label %676

676:                                              ; preds = %672, %668, %664, %648, %646, %638
  %677 = phi i32 [ %675, %672 ], [ -1, %638 ], [ -95, %648 ], [ -95, %646 ], [ -95, %668 ], [ -14, %664 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %678

678:                                              ; preds = %676, %636, %634, %632, %590, %548, %504, %473, %460, %453, %445, %396, %385, %374, %366, %349, %325, %318, %307, %305, %250, %248, %240
  %679 = phi i32 [ %677, %676 ], [ %637, %636 ], [ %635, %634 ], [ %633, %632 ], [ %591, %590 ], [ %549, %548 ], [ %508, %504 ], [ %487, %473 ], [ %472, %460 ], [ %459, %453 ], [ %452, %445 ], [ %406, %396 ], [ %395, %385 ], [ %384, %374 ], [ %373, %366 ], [ %356, %349 ], [ %331, %325 ], [ %324, %318 ], [ %317, %307 ], [ %306, %305 ], [ %251, %250 ], [ %249, %248 ], [ %242, %240 ]
  %680 = icmp eq i32 %679, -515
  br i1 %680, label %681, label %691

681:                                              ; preds = %678, %3
  %682 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %683 = load ptr, ptr %682, align 8
  %684 = getelementptr inbounds %struct.gendisk, ptr %683, i32 0, i32 8
  %685 = load ptr, ptr %684, align 8
  %686 = getelementptr inbounds %struct.block_device_operations, ptr %685, i32 0, i32 4
  %687 = load ptr, ptr %686, align 4
  %688 = icmp eq ptr %687, null
  br i1 %688, label %691, label %689

689:                                              ; preds = %681
  %690 = call i32 %687(ptr noundef %15, i32 noundef %24, i32 noundef %1, i32 noundef %2) #6
  br label %691

691:                                              ; preds = %689, %681, %678, %500, %498, %490, %488, %244, %222, %220, %218, %216, %206, %204, %162, %154, %150, %135, %133, %131, %66, %56, %54, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %692 = phi i32 [ %690, %689 ], [ %215, %206 ], [ %205, %204 ], [ %174, %162 ], [ %161, %154 ], [ %149, %135 ], [ %55, %54 ], [ -22, %133 ], [ -27, %150 ], [ -25, %3 ], [ %679, %678 ], [ -25, %681 ], [ %132, %131 ], [ -14, %66 ], [ -14, %56 ], [ -14, %222 ], [ -13, %220 ], [ 0, %244 ], [ -13, %216 ], [ 0, %218 ], [ -22, %500 ], [ -13, %498 ], [ -13, %488 ], [ 0, %490 ], [ -25, %3 ], [ -25, %3 ], [ -25, %3 ], [ -25, %3 ], [ -25, %3 ], [ -25, %3 ], [ -25, %3 ], [ -25, %3 ]
  ret i32 %692
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_del_partition(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_add_partition(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_resize_partition(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @blk_ioctl_discard(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %1, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 11
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %10
  %18 = inttoptr i32 %2 to ptr
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 16, i32 -1090519040) #7, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !16

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #6
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #8, !srcloc !9
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %18, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !16

30:                                               ; preds = %22, %17
  %31 = phi i32 [ %28, %22 ], [ 16, %17 ]
  %32 = sub i32 16, %31
  %33 = getelementptr i8, ptr %5, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #6
  br label %64

34:                                               ; preds = %22
  %35 = load i64, ptr %5, align 8
  %36 = getelementptr inbounds [2 x i64], ptr %5, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %35, 511
  %39 = icmp eq i64 %38, 0
  %40 = and i64 %37, 511
  %41 = icmp eq i64 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %64

43:                                               ; preds = %34
  %44 = add i64 %37, %35
  %45 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = shl i64 %46, 9
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.address_space, ptr %51, i32 0, i32 2
  call void @down_write(ptr noundef %52) #6
  %53 = add i64 %44, -1
  %54 = call i32 @truncate_bdev_range(ptr noundef %0, i32 noundef %1, i64 noundef %35, i64 noundef %53) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = lshr i64 %35, 9
  %58 = lshr i64 %37, 9
  %59 = call i32 @blkdev_issue_discard(ptr noundef %0, i64 noundef %57, i64 noundef %58, i32 noundef 3264, i32 noundef %3) #6
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i32 [ %54, %49 ], [ %59, %56 ]
  %62 = load ptr, ptr %50, align 8
  %63 = getelementptr inbounds %struct.address_space, ptr %62, i32 0, i32 2
  call void @up_write(ptr noundef %63) #6
  br label %64

64:                                               ; preds = %60, %43, %34, %30, %10, %4
  %65 = phi i32 [ %61, %60 ], [ -9, %4 ], [ -95, %10 ], [ -22, %34 ], [ -22, %43 ], [ -14, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disk_scan_partitions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @blkdev_pr_preempt(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.pr_preempt, align 8
  %5 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.block_device_operations, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !14
  %11 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  %13 = icmp eq ptr %10, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pr_ops, ptr %10, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1090519040) #7, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !16

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #6
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #8, !srcloc !9
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 24) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !16

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %28, %22 ], [ 24, %18 ]
  %32 = sub i32 24, %31
  %33 = getelementptr i8, ptr %4, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #6
  br label %46

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.pr_preempt, ptr %4, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %15, align 4
  %40 = load i64, ptr %4, align 8
  %41 = getelementptr inbounds %struct.pr_preempt, ptr %4, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.pr_preempt, ptr %4, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = call i32 %39(ptr noundef %0, i64 noundef %40, i64 noundef %42, i32 noundef %44, i1 noundef zeroext %2) #6
  br label %46

46:                                               ; preds = %38, %34, %30, %14, %12, %3
  %47 = phi i32 [ %45, %38 ], [ -1, %3 ], [ -95, %14 ], [ -95, %12 ], [ -95, %34 ], [ -14, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsync_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_bdev_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

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
!8 = !{i64 2151074481, i64 2151074506}
!9 = !{i64 3570015}
!10 = !{i64 3570212}
!11 = !{i64 2151055491}
!12 = !{i64 2153450387, i64 2153450667, i64 2153451001, i64 2153451335}
!13 = !{i64 2153462343, i64 2153462623, i64 2153462957, i64 2153463291}
!14 = !{!"auto-init"}
!15 = !{i64 2151073903, i64 2151073928}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2153496117, i64 2153496397, i64 2153496731, i64 2153497065}
!18 = !{i64 2153504237, i64 2153504517, i64 2153504851, i64 2153505185}
!19 = !{i64 2153479877, i64 2153480157, i64 2153480491, i64 2153480825}
!20 = !{i64 2153535556, i64 2153535836, i64 2153536170, i64 2153536504}
!21 = !{i64 2153514171, i64 2153514451, i64 2153514785, i64 2153515119}
!22 = !{i64 2153523635, i64 2153523915, i64 2153524249, i64 2153524583}
!23 = !{i64 2153487997, i64 2153488277, i64 2153488611, i64 2153488945}
!24 = !{i8 0, i8 2}
!25 = !{i64 2147785483, i64 2147785763, i64 2147786097, i64 2147786431}
!26 = !{i64 2153469943, i64 2153470223, i64 2153470557, i64 2153470891}
