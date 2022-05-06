; ModuleID = '/llk/IR/drivers/pci/proc.c_pt.bc'
source_filename = "../drivers/pci/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_filp_private = type { i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }

@proc_initialized = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [10 x i8] c"%04x:%02x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@proc_bus_pci_dir = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%02x.%x\00", align 1
@proc_bus_pci_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_bus_pci_open, ptr @proc_bus_pci_read, ptr null, ptr @proc_bus_pci_write, ptr @proc_bus_pci_lseek, ptr @proc_bus_pci_release, ptr null, ptr @proc_bus_pci_ioctl, ptr @proc_bus_pci_mmap, ptr null }, align 4
@__initcall__kmod_proc__228_469_pci_proc_init6 = internal global ptr @pci_proc_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"bus/pci\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@proc_bus_pci_devices_op = internal constant %struct.seq_operations { ptr @pci_seq_start, ptr @pci_seq_stop, ptr @pci_seq_next, ptr @show_device }, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"%02x%02x\09%04x%04x\09%x\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\09%16llx\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_proc__228_469_pci_proc_init6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_proc_attach_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %5 = load i1, ptr @proc_initialized, align 4
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 16
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  br i1 %13, label %19, label %17

17:                                               ; preds = %10
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef %16)
  br label %21

19:                                               ; preds = %10
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef %16)
  br label %21

21:                                               ; preds = %19, %17
  %22 = load ptr, ptr @proc_bus_pci_dir, align 4
  %23 = call ptr @proc_mkdir(ptr noundef nonnull %2, ptr noundef %22) #10
  store ptr %23, ptr %7, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %21, %6
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 3
  %29 = and i32 %28, 31
  %30 = and i32 %27, 7
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, i32 noundef %29, i32 noundef %30)
  %32 = load ptr, ptr %7, align 8
  %33 = call ptr @proc_create_data(ptr noundef nonnull %2, i16 noundef zeroext -32348, ptr noundef %32, ptr noundef nonnull @proc_bus_pci_ops, ptr noundef %0) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %37 = load i32, ptr %36, align 8
  %38 = sext i32 %37 to i64
  call void @proc_set_size(ptr noundef nonnull %33, i64 noundef %38) #10
  %39 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 4
  store ptr %33, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %25, %21, %1
  %41 = phi i32 [ 0, %35 ], [ -13, %1 ], [ -12, %21 ], [ -12, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_size(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_proc_detach_device(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @proc_remove(ptr noundef %3) #10
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_proc_detach_bus(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  tail call void @proc_remove(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_proc_init() #5 section ".init.text" {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.4, ptr noundef null) #10
  store ptr %1, ptr @proc_bus_pci_dir, align 4
  %2 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.5, i16 noundef zeroext 0, ptr noundef %1, ptr noundef nonnull @proc_bus_pci_devices_op, i32 noundef 0, ptr noundef null) #10
  store i1 true, ptr @proc_initialized, align 4
  %3 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %0
  %6 = phi ptr [ %8, %5 ], [ %3, %0 ]
  %7 = tail call i32 @pci_proc_attach_device(ptr noundef nonnull %6)
  %8 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %6) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_open(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 8) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.pci_filp_private, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %8, align 8
  %9 = tail call ptr @iomem_get_mapping() #10
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  store ptr %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  %14 = load i64, ptr %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 45
  %19 = load i32, ptr %18, align 8
  br label %25

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 13
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 2
  %24 = select i1 %23, i32 128, i32 64
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %19, %17 ], [ %24, %20 ]
  %27 = icmp ugt i32 %26, %15
  br i1 %27, label %28, label %131

28:                                               ; preds = %25
  %29 = tail call i32 @llvm.umin.i32(i32 %26, i32 %2)
  %30 = add i32 %29, %15
  %31 = icmp ugt i32 %30, %26
  %32 = sub i32 %26, %15
  %33 = select i1 %31, i32 %32, i32 %29
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %33, i32 -1090519040) #12, !srcloc !9
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %131

37:                                               ; preds = %28
  tail call void @pci_config_pm_runtime_get(ptr noundef %13) #10
  %38 = and i32 %15, 1
  %39 = icmp ne i32 %38, 0
  %40 = icmp ne i32 %33, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %43 = call i32 @pci_user_read_config_byte(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %5) #10
  %44 = load i8, ptr %5, align 1
  %45 = tail call ptr @llvm.thread.pointer() #10
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #13, !srcloc !10
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %50 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i8 %44, i32 -1090519041) #10, !srcloc !13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %51 = getelementptr i8, ptr %1, i32 1
  %52 = add nuw i32 %15, 1
  %53 = add i32 %33, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %54

54:                                               ; preds = %42, %37
  %55 = phi i32 [ %53, %42 ], [ %33, %37 ]
  %56 = phi i32 [ %52, %42 ], [ %15, %37 ]
  %57 = phi ptr [ %51, %42 ], [ %1, %37 ]
  %58 = and i32 %56, 3
  %59 = icmp ne i32 %58, 0
  %60 = icmp ugt i32 %55, 2
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 0, ptr %6, align 2, !annotation !8
  %63 = call i32 @pci_user_read_config_word(ptr noundef %13, i32 noundef %56, ptr noundef nonnull %6) #10
  %64 = load i16, ptr %6, align 2
  %65 = tail call ptr @llvm.thread.pointer() #10
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #13, !srcloc !10
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %70 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %57, i16 %64, i32 -1090519041) #10, !srcloc !14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %71 = getelementptr i8, ptr %57, i32 2
  %72 = add i32 %56, 2
  %73 = add i32 %55, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  br label %74

74:                                               ; preds = %62, %54
  %75 = phi i32 [ %73, %62 ], [ %55, %54 ]
  %76 = phi i32 [ %72, %62 ], [ %56, %54 ]
  %77 = phi ptr [ %71, %62 ], [ %57, %54 ]
  %78 = icmp ugt i32 %75, 3
  br i1 %78, label %79, label %96

79:                                               ; preds = %79, %74
  %80 = phi ptr [ %91, %79 ], [ %77, %74 ]
  %81 = phi i32 [ %92, %79 ], [ %76, %74 ]
  %82 = phi i32 [ %93, %79 ], [ %75, %74 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %83 = call i32 @pci_user_read_config_dword(ptr noundef %13, i32 noundef %81, ptr noundef nonnull %7) #10
  %84 = load i32, ptr %7, align 4
  %85 = tail call ptr @llvm.thread.pointer() #10
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %86) #13, !srcloc !10
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %90 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %80, i32 %84, i32 -1090519041) #10, !srcloc !15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %91 = getelementptr i8, ptr %80, i32 4
  %92 = add i32 %81, 4
  %93 = add i32 %82, -4
  %94 = call i32 @__cond_resched() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %95 = icmp ugt i32 %93, 3
  br i1 %95, label %79, label %96

96:                                               ; preds = %79, %74
  %97 = phi i32 [ %75, %74 ], [ %93, %79 ]
  %98 = phi i32 [ %76, %74 ], [ %92, %79 ]
  %99 = phi ptr [ %77, %74 ], [ %91, %79 ]
  %100 = icmp ugt i32 %97, 1
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 0, ptr %8, align 2, !annotation !8
  %102 = call i32 @pci_user_read_config_word(ptr noundef %13, i32 noundef %98, ptr noundef nonnull %8) #10
  %103 = load i16, ptr %8, align 2
  %104 = tail call ptr @llvm.thread.pointer() #10
  %105 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 3
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %105) #13, !srcloc !10
  %107 = and i32 %106, -13
  %108 = or i32 %107, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %109 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %99, i16 %103, i32 -1090519041) #10, !srcloc !16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %110 = getelementptr i8, ptr %99, i32 2
  %111 = add i32 %98, 2
  %112 = add nsw i32 %97, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  br label %113

113:                                              ; preds = %101, %96
  %114 = phi i32 [ %112, %101 ], [ %97, %96 ]
  %115 = phi i32 [ %111, %101 ], [ %98, %96 ]
  %116 = phi ptr [ %110, %101 ], [ %99, %96 ]
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !8
  %119 = call i32 @pci_user_read_config_byte(ptr noundef %13, i32 noundef %115, ptr noundef nonnull %9) #10
  %120 = load i8, ptr %9, align 1
  %121 = tail call ptr @llvm.thread.pointer() #10
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 3
  %123 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %122) #13, !srcloc !10
  %124 = and i32 %123, -13
  %125 = or i32 %124, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %126 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %116, i8 %120, i32 -1090519041) #10, !srcloc !17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %127 = add i32 %115, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  br label %128

128:                                              ; preds = %118, %113
  %129 = phi i32 [ %127, %118 ], [ %115, %113 ]
  call void @pci_config_pm_runtime_put(ptr noundef %13) #10
  %130 = zext i32 %129 to i64
  store i64 %130, ptr %3, align 8
  br label %131

131:                                              ; preds = %128, %28, %25
  %132 = phi i32 [ %33, %128 ], [ 0, %25 ], [ -22, %28 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = load i64, ptr %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 45
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, %10
  br i1 %13, label %14, label %129

14:                                               ; preds = %4
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %2)
  %16 = add i32 %15, %10
  %17 = icmp ugt i32 %16, %12
  %18 = sub i32 %12, %10
  %19 = select i1 %17, i32 %18, i32 %15
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %19, i32 -1090519040) #12, !srcloc !18
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %129

23:                                               ; preds = %14
  tail call void @pci_config_pm_runtime_get(ptr noundef %8) #10
  %24 = and i32 %10, 1
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne i32 %19, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = tail call ptr @llvm.thread.pointer() #10
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #13, !srcloc !10
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %34 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #10, !srcloc !19
  %35 = extractvalue { i32, i32 } %34, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %36 = trunc i32 %35 to i8
  %37 = tail call i32 @pci_user_write_config_byte(ptr noundef %8, i32 noundef %10, i8 noundef zeroext %36) #10
  %38 = getelementptr i8, ptr %1, i32 1
  %39 = add nsw i32 %10, 1
  %40 = add i32 %19, -1
  br label %41

41:                                               ; preds = %28, %23
  %42 = phi i32 [ %40, %28 ], [ %19, %23 ]
  %43 = phi i32 [ %39, %28 ], [ %10, %23 ]
  %44 = phi ptr [ %38, %28 ], [ %1, %23 ]
  %45 = and i32 %43, 3
  %46 = icmp ne i32 %45, 0
  %47 = icmp sgt i32 %42, 2
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = tail call ptr @llvm.thread.pointer() #10
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #13, !srcloc !10
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %55 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %44, i32 -1090519041) #10, !srcloc !20
  %56 = extractvalue { i32, i32 } %55, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %57 = trunc i32 %56 to i16
  %58 = tail call i32 @pci_user_write_config_word(ptr noundef %8, i32 noundef %43, i16 noundef zeroext %57) #10
  %59 = getelementptr i8, ptr %44, i32 2
  %60 = add i32 %43, 2
  %61 = add nsw i32 %42, -2
  br label %62

62:                                               ; preds = %49, %41
  %63 = phi i32 [ %61, %49 ], [ %42, %41 ]
  %64 = phi i32 [ %60, %49 ], [ %43, %41 ]
  %65 = phi ptr [ %59, %49 ], [ %44, %41 ]
  %66 = icmp sgt i32 %63, 3
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = tail call ptr @llvm.thread.pointer() #10
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  br label %70

70:                                               ; preds = %70, %67
  %71 = phi ptr [ %65, %67 ], [ %80, %70 ]
  %72 = phi i32 [ %64, %67 ], [ %81, %70 ]
  %73 = phi i32 [ %63, %67 ], [ %82, %70 ]
  %74 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #13, !srcloc !10
  %75 = and i32 %74, -13
  %76 = or i32 %75, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %77 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %71, i32 -1090519041) #10, !srcloc !21
  %78 = extractvalue { i32, i32 } %77, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %79 = tail call i32 @pci_user_write_config_dword(ptr noundef %8, i32 noundef %72, i32 noundef %78) #10
  %80 = getelementptr i8, ptr %71, i32 4
  %81 = add i32 %72, 4
  %82 = add nsw i32 %73, -4
  %83 = icmp ugt i32 %73, 7
  br i1 %83, label %70, label %84

84:                                               ; preds = %70, %62
  %85 = phi i32 [ %63, %62 ], [ %82, %70 ]
  %86 = phi i32 [ %64, %62 ], [ %81, %70 ]
  %87 = phi ptr [ %65, %62 ], [ %80, %70 ]
  %88 = icmp sgt i32 %85, 1
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = tail call ptr @llvm.thread.pointer() #10
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %92 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %91) #13, !srcloc !10
  %93 = and i32 %92, -13
  %94 = or i32 %93, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %95 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %87, i32 -1090519041) #10, !srcloc !22
  %96 = extractvalue { i32, i32 } %95, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %97 = trunc i32 %96 to i16
  %98 = tail call i32 @pci_user_write_config_word(ptr noundef %8, i32 noundef %86, i16 noundef zeroext %97) #10
  %99 = getelementptr i8, ptr %87, i32 2
  %100 = add i32 %86, 2
  %101 = add nsw i32 %85, -2
  br label %102

102:                                              ; preds = %89, %84
  %103 = phi i32 [ %101, %89 ], [ %85, %84 ]
  %104 = phi i32 [ %100, %89 ], [ %86, %84 ]
  %105 = phi ptr [ %99, %89 ], [ %87, %84 ]
  %106 = icmp eq i32 %103, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %102
  %108 = tail call ptr @llvm.thread.pointer() #10
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %110 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %109) #13, !srcloc !10
  %111 = and i32 %110, -13
  %112 = or i32 %111, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %113 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %105, i32 -1090519041) #10, !srcloc !23
  %114 = extractvalue { i32, i32 } %113, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %115 = trunc i32 %114 to i8
  %116 = tail call i32 @pci_user_write_config_byte(ptr noundef %8, i32 noundef %104, i8 noundef zeroext %115) #10
  %117 = add i32 %104, 1
  br label %118

118:                                              ; preds = %107, %102
  %119 = phi i32 [ %117, %107 ], [ %104, %102 ]
  tail call void @pci_config_pm_runtime_put(ptr noundef %8) #10
  %120 = sext i32 %119 to i64
  store i64 %120, ptr %3, align 8
  %121 = load i32, ptr %11, align 8
  %122 = sext i32 %121 to i64
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %123 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !25
  %126 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  store i64 %122, ptr %126, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !26
  %127 = load i32, ptr %123, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %123, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %129

129:                                              ; preds = %118, %14, %4
  %130 = phi i32 [ %19, %118 ], [ 0, %4 ], [ -22, %14 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @proc_bus_pci_lseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 45
  %9 = load i32, ptr %8, align 8
  %10 = sext i32 %9 to i64
  %11 = tail call i64 @fixed_size_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %10) #10
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #10
  store ptr null, ptr %3, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @proc_bus_pci_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  switch i32 %1, label %16 [
    i32 1346586880, label %4
    i32 1346586882, label %13
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 16
  %12 = load i32, ptr %11, align 8
  br label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %4, %3
  %17 = phi i32 [ 0, %13 ], [ %12, %4 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = tail call zeroext i1 @capable(i32 noundef 17) #10
  br i1 %9, label %10, label %91

10:                                               ; preds = %2
  %11 = load i32, ptr %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %91, label %13

13:                                               ; preds = %10
  %14 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @pci_mmap_fits(ptr noundef %6, i32 noundef 0, ptr noundef %1, i32 noundef 1) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %18, %13
  %22 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 1, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @pci_mmap_fits(ptr noundef %6, i32 noundef 1, ptr noundef %1, i32 noundef 1) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %26, %21
  %30 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 2, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @pci_mmap_fits(ptr noundef %6, i32 noundef 2, ptr noundef %1, i32 noundef 1) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %34, %29
  %38 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 3, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @pci_mmap_fits(ptr noundef %6, i32 noundef 3, ptr noundef %1, i32 noundef 1) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42, %37
  %46 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 4, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = tail call i32 @pci_mmap_fits(ptr noundef %6, i32 noundef 4, ptr noundef %1, i32 noundef 1) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50, %45
  %54 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 5, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 512
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %91, label %58

58:                                               ; preds = %53
  %59 = tail call i32 @pci_mmap_fits(ptr noundef %6, i32 noundef 5, ptr noundef %1, i32 noundef 1) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %58, %50, %42, %34, %26, %18
  %62 = phi i32 [ 0, %18 ], [ 1, %26 ], [ 2, %34 ], [ 3, %42 ], [ 4, %50 ], [ 5, %58 ]
  %63 = load i32, ptr %8, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.pci_filp_private, ptr %8, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 %62, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 8192
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %69, %65, %61
  %75 = phi i32 [ 0, %65 ], [ 0, %61 ], [ 1, %69 ]
  %76 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 %62, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 512
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 %62
  %82 = load i32, ptr %81, align 8
  %83 = zext i32 %82 to i64
  %84 = tail call zeroext i1 @iomem_is_exclusive(i64 noundef %83) #10
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %8, align 4
  br label %87

87:                                               ; preds = %85, %74
  %88 = phi i32 [ %86, %85 ], [ %63, %74 ]
  %89 = tail call i32 @pci_mmap_page_range(ptr noundef %6, i32 noundef %62, ptr noundef %1, i32 noundef %88, i32 noundef %75) #10
  %90 = tail call i32 @llvm.smin.i32(i32 %89, i32 0)
  br label %91

91:                                               ; preds = %87, %80, %69, %58, %53, %10, %2
  %92 = phi i32 [ -1, %2 ], [ -22, %10 ], [ -22, %69 ], [ -22, %80 ], [ %90, %87 ], [ -19, %58 ], [ -19, %53 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iomem_get_mapping() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_mmap_fits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iomem_is_exclusive(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_mmap_page_range(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pci_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ null, %2 ], [ %7, %4 ]
  %6 = phi i64 [ %3, %2 ], [ %9, %4 ]
  %7 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %5) #10
  %8 = icmp eq ptr %7, null
  %9 = add i64 %6, -1
  %10 = icmp eq i64 %6, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %4

12:                                               ; preds = %4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_seq_stop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @pci_dev_put(ptr noundef nonnull %1) #10
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pci_seq_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %1) #10
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %97, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @pci_dev_driver(ptr noundef nonnull %1) #10
  %10 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 12
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %14, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %24) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %25 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0
  call void @pci_resource_to_user(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %26 = load i32, ptr %3, align 4
  %27 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 15
  %30 = or i32 %29, %26
  %31 = zext i32 %30 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %31) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %32 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 1
  call void @pci_resource_to_user(ptr noundef nonnull %1, i32 noundef 1, ptr noundef %32, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %33 = load i32, ptr %3, align 4
  %34 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 1, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 15
  %37 = or i32 %36, %33
  %38 = zext i32 %37 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %38) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %39 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 2
  call void @pci_resource_to_user(ptr noundef nonnull %1, i32 noundef 2, ptr noundef %39, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %40 = load i32, ptr %3, align 4
  %41 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 2, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 15
  %44 = or i32 %43, %40
  %45 = zext i32 %44 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %45) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %46 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 3
  call void @pci_resource_to_user(ptr noundef nonnull %1, i32 noundef 3, ptr noundef %46, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %47 = load i32, ptr %3, align 4
  %48 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 3, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 15
  %51 = or i32 %50, %47
  %52 = zext i32 %51 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %52) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %53 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 4
  call void @pci_resource_to_user(ptr noundef nonnull %1, i32 noundef 4, ptr noundef %53, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %54 = load i32, ptr %3, align 4
  %55 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 4, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 15
  %58 = or i32 %57, %54
  %59 = zext i32 %58 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %59) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %60 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 5
  call void @pci_resource_to_user(ptr noundef nonnull %1, i32 noundef 5, ptr noundef %60, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %61 = load i32, ptr %3, align 4
  %62 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 5, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 15
  %65 = or i32 %64, %61
  %66 = zext i32 %65 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %66) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %67 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 6
  call void @pci_resource_to_user(ptr noundef nonnull %1, i32 noundef 6, ptr noundef %67, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %68 = load i32, ptr %3, align 4
  %69 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 6, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 15
  %72 = or i32 %71, %68
  %73 = zext i32 %72 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %73) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %74

74:                                               ; preds = %87, %8
  %75 = phi i32 [ %89, %87 ], [ 0, %8 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %76 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %75
  call void @pci_resource_to_user(ptr noundef nonnull %1, i32 noundef %75, ptr noundef %76, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %75, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, ptr %6, align 4
  %83 = load i32, ptr %5, align 4
  %84 = sub i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = add nuw nsw i64 %85, 1
  br label %87

87:                                               ; preds = %81, %74
  %88 = phi i64 [ %86, %81 ], [ 0, %74 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %88) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %89 = add nuw nsw i32 %75, 1
  %90 = icmp eq i32 %89, 7
  br i1 %90, label %91, label %74

91:                                               ; preds = %87
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #10
  %92 = icmp eq ptr %9, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.pci_driver, ptr %9, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  call void @seq_puts(ptr noundef %0, ptr noundef %95) #10
  br label %96

96:                                               ; preds = %93, %91
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  br label %97

97:                                               ; preds = %96, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_resource_to_user(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{i64 2153313139, i64 2153313164}
!10 = !{i64 5140813}
!11 = !{i64 5141010}
!12 = !{i64 2152626289}
!13 = !{i64 2153315304, i64 2153315584, i64 2153315918, i64 2153316252}
!14 = !{i64 2153325500, i64 2153325780, i64 2153326114, i64 2153326448}
!15 = !{i64 2153335696, i64 2153335976, i64 2153336310, i64 2153336644}
!16 = !{i64 2153342363, i64 2153342643, i64 2153342977, i64 2153343311}
!17 = !{i64 2153352750, i64 2153353030, i64 2153353364, i64 2153353698}
!18 = !{i64 2153359302, i64 2153359327}
!19 = !{i64 2153362996, i64 2153363276, i64 2153363610, i64 2153363944}
!20 = !{i64 2153377584, i64 2153377864, i64 2153378198, i64 2153378532}
!21 = !{i64 2153392219, i64 2153392499, i64 2153392833, i64 2153393167}
!22 = !{i64 2153401732, i64 2153402012, i64 2153402346, i64 2153402680}
!23 = !{i64 2153411155, i64 2153411435, i64 2153411769, i64 2153412103}
!24 = !{i64 2152920769}
!25 = !{i64 2149361322}
!26 = !{i64 2149361623}
!27 = !{i64 2152928327}
