; ModuleID = '/llk/IR/drivers/mmc/core/sdio_ops.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_ops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.62, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.62 = type { %struct.atomic_t }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"drivers/mmc/core/sdio_ops.c\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_io_op_cond(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #5
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 40, i1 false)
  store i32 5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 737, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  br label %12

12:                                               ; preds = %27, %3
  %13 = phi i32 [ 100, %3 ], [ %28, %27 ]
  %14 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 3) #5
  %15 = icmp ne i32 %14, 0
  %16 = or i1 %10, %15
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %11, align 8
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %27, label %30

24:                                               ; preds = %17
  %25 = load i32, ptr %9, align 4
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12500, i32 noundef 2) #5
  %28 = add nsw i32 %13, -1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %12

30:                                               ; preds = %27, %24, %21, %12
  %31 = phi i32 [ %14, %12 ], [ 0, %21 ], [ 0, %24 ], [ -110, %27 ]
  %32 = icmp eq ptr %2, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %11, align 8
  %35 = lshr i32 %34, 4
  %36 = and i32 %35, 1
  %37 = getelementptr %struct.mmc_command, ptr %4, i32 0, i32 2, i32 %36
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %2, align 4
  br label %39

39:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #5
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_io_rw_direct(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.mmc_command, align 4
  %8 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #5
  %9 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 40, i1 false) #5
  %10 = icmp ult i32 %2, 8
  %11 = icmp ult i32 %3, 131072
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %6
  store i32 52, ptr %7, align 4
  %14 = icmp ne i32 %1, 0
  %15 = select i1 %14, i32 -2147483648, i32 0
  %16 = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %17 = shl nuw nsw i32 %2, 28
  %18 = or i32 %15, %17
  %19 = icmp ne ptr %5, null
  %20 = and i1 %14, %19
  %21 = select i1 %20, i32 134217728, i32 0
  %22 = shl nuw nsw i32 %3, 9
  %23 = zext i8 %4 to i32
  %24 = or i32 %18, %22
  %25 = or i32 %24, %23
  %26 = or i32 %25, %21
  store i32 %26, ptr %16, align 4
  %27 = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 3
  store i32 405, ptr %27, align 4
  %28 = call i32 @mmc_wait_for_cmd(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 0) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 16
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = and i32 %36, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = and i32 %36, 256
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %19, true
  %46 = or i1 %44, %45
  %47 = select i1 %44, i32 -34, i32 0
  br i1 %46, label %55, label %52

48:                                               ; preds = %30
  br i1 %19, label %49, label %55

49:                                               ; preds = %48
  %50 = load i32, ptr %9, align 4
  %51 = lshr i32 %50, 8
  br label %52

52:                                               ; preds = %49, %42
  %53 = phi i32 [ %51, %49 ], [ %36, %42 ]
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %5, align 1
  br label %55

55:                                               ; preds = %52, %48, %42, %39, %35, %13, %6
  %56 = phi i32 [ -22, %6 ], [ %28, %13 ], [ -5, %35 ], [ -22, %39 ], [ %47, %42 ], [ 0, %48 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #5
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_io_rw_extended(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.mmc_request, align 4
  %10 = alloca %struct.mmc_command, align 4
  %11 = alloca %struct.mmc_data, align 4
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca %struct.sg_table, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %9) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %9, i8 0, i32 68, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #5
  %14 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %14, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %11, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %12, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i32 12, i1 false), !annotation !8
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 20
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef null) #5
  br label %20

20:                                               ; preds = %19, %8
  %21 = icmp ult i32 %3, 131072
  br i1 %21, label %22, label %136

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.mmc_request, ptr %9, i32 0, i32 1
  store ptr %10, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_request, ptr %9, i32 0, i32 2
  store ptr %11, ptr %24, align 4
  store i32 53, ptr %10, align 4
  %25 = icmp eq i32 %1, 0
  %26 = select i1 %25, i32 0, i32 -2147483648
  %27 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 1
  %28 = shl i32 %2, 28
  %29 = or i32 %26, %28
  %30 = icmp eq i32 %4, 0
  %31 = select i1 %30, i32 0, i32 67108864
  %32 = shl nuw nsw i32 %3, 9
  %33 = icmp eq i32 %6, 0
  %34 = or i32 %6, 134217728
  %35 = icmp eq i32 %7, 512
  %36 = select i1 %35, i32 0, i32 %7
  %37 = select i1 %33, i32 %36, i32 %34
  %38 = or i32 %29, %32
  %39 = or i32 %38, %31
  %40 = or i32 %39, %37
  store i32 %40, ptr %27, align 4
  %41 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 3
  store i32 437, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 2
  store i32 %7, ptr %42, align 4
  %43 = select i1 %33, i32 1, i32 %6
  %44 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = select i1 %25, i32 512, i32 256
  %46 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = mul i32 %43, %7
  %48 = add i32 %47, -1
  %49 = add i32 %48, %17
  %50 = udiv i32 %49, %17
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %87

52:                                               ; preds = %22
  %53 = call i32 @sg_alloc_table(ptr noundef nonnull %13, i32 noundef %50, i32 noundef 3264) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %136

55:                                               ; preds = %52
  %56 = load ptr, ptr %13, align 4
  %57 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 12
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 10
  store i32 %50, ptr %58, align 4
  br label %59

59:                                               ; preds = %74, %55
  %60 = phi ptr [ %84, %74 ], [ %56, %55 ]
  %61 = phi i32 [ %82, %74 ], [ %47, %55 ]
  %62 = phi i32 [ %83, %74 ], [ 0, %55 ]
  %63 = mul i32 %62, %17
  %64 = getelementptr i8, ptr %5, i32 %63
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %64 to i32
  %67 = add i32 %66, 1073741824
  %68 = lshr i32 %67, 12
  %69 = getelementptr %struct.page, ptr %65, i32 %68
  %70 = ptrtoint ptr %69 to i32
  %71 = and i32 %70, 3
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73, !prof !10

73:                                               ; preds = %59
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

74:                                               ; preds = %59
  %75 = call i32 @llvm.umin.i32(i32 %61, i32 %17)
  %76 = and i32 %66, 4095
  %77 = load i32, ptr %60, align 4
  %78 = and i32 %77, 3
  %79 = or i32 %78, %70
  store i32 %79, ptr %60, align 4
  %80 = getelementptr inbounds %struct.scatterlist, ptr %60, i32 0, i32 1
  store i32 %76, ptr %80, align 4
  %81 = getelementptr inbounds %struct.scatterlist, ptr %60, i32 0, i32 2
  store i32 %75, ptr %81, align 4
  %82 = sub i32 %61, %17
  %83 = add nuw i32 %62, 1
  %84 = call ptr @sg_next(ptr noundef %60) #5
  %85 = load i32, ptr %58, align 4
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %59, label %90

87:                                               ; preds = %22
  %88 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 12
  store ptr %12, ptr %88, align 4
  %89 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 10
  store i32 1, ptr %89, align 4
  call void @sg_init_one(ptr noundef nonnull %12, ptr noundef %5, i32 noundef %47) #5
  br label %90

90:                                               ; preds = %87, %74
  call void @mmc_set_data_timeout(ptr noundef nonnull %11, ptr noundef %0) #5
  %91 = load ptr, ptr %0, align 8
  %92 = getelementptr inbounds %struct.mmc_host, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.mmc_host_ops, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  call void %95(ptr noundef %91, ptr noundef nonnull %9) #5
  %98 = load ptr, ptr %0, align 8
  br label %99

99:                                               ; preds = %97, %90
  %100 = phi ptr [ %91, %90 ], [ %98, %97 ]
  call void @mmc_wait_for_req(ptr noundef %100, ptr noundef nonnull %9) #5
  %101 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %104
  %109 = load ptr, ptr %0, align 8
  %110 = getelementptr inbounds %struct.mmc_host, ptr %109, i32 0, i32 16
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 2048
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = and i32 %116, 512
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = and i32 %116, 256
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 0, i32 -34
  br label %126

126:                                              ; preds = %122, %119, %114, %108, %104, %99
  %127 = phi i32 [ %102, %99 ], [ %106, %104 ], [ 0, %108 ], [ -5, %114 ], [ -22, %119 ], [ %125, %122 ]
  %128 = load ptr, ptr %0, align 8
  %129 = getelementptr inbounds %struct.mmc_host, ptr %128, i32 0, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  call void %131(ptr noundef %128, ptr noundef nonnull %9, i32 noundef %127) #5
  br label %134

134:                                              ; preds = %133, %126
  br i1 %51, label %135, label %136

135:                                              ; preds = %134
  call void @sg_free_table(ptr noundef nonnull %13) #5
  br label %136

136:                                              ; preds = %135, %134, %52, %20
  %137 = phi i32 [ -22, %20 ], [ -12, %52 ], [ %127, %135 ], [ %127, %134 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %9) #5
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmc_command, align 4
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #5
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 40, i1 false) #5
  store i32 52, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 3072, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 405, ptr %6, align 4
  %7 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %4, align 4
  br i1 %13, label %15, label %21

15:                                               ; preds = %9
  %16 = and i32 %14, 2560
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = and i32 %14, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %28

21:                                               ; preds = %9
  %22 = lshr i32 %14, 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ %14, %18 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #5
  %25 = and i32 %24, 247
  %26 = or i32 %25, -2147480568
  br label %29

27:                                               ; preds = %15, %1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #5
  br label %29

28:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #5
  br label %29

29:                                               ; preds = %28, %27, %23
  %30 = phi i32 [ %26, %23 ], [ -2147480568, %28 ], [ -2147480568, %27 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #5
  %31 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %31, i8 0, i32 40, i1 false) #5
  store i32 52, ptr %2, align 4
  %32 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  store i32 %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 3
  store i32 405, ptr %33, align 4
  %34 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, ptr %31, align 4
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = and i32 %42, 512
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = and i32 %42, 256
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 0, i32 -34
  br label %52

52:                                               ; preds = %48, %45, %41, %36, %29
  %53 = phi i32 [ %34, %29 ], [ -5, %41 ], [ -22, %45 ], [ %51, %48 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #5
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152085818, i64 2152086310, i64 2152085855, i64 2152085911, i64 2152085945, i64 2152085969, i64 2152086010, i64 2152086031, i64 2152086059, i64 2152086093}
