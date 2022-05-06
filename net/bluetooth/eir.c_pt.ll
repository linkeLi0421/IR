; ModuleID = '/llk/IR/net/bluetooth/eir.c_pt.bc'
source_filename = "../net/bluetooth/eir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bt_uuid = type { %struct.list_head, [16 x i8], i8, i8 }
%struct.adv_info = type { %struct.list_head, i8, i8, i8, i32, i16, i16, i16, i16, [251 x i8], i16, [251 x i8], i8, i32, i32, %struct.bdaddr_t, i8, %struct.delayed_work }

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @eir_append_local_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [10 x i8], align 1
  %5 = icmp ugt i8 %2, 18
  br i1 %5, label %61, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 13
  %8 = tail call i32 @strlen(ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  %10 = add i32 %8, -1
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = zext i8 %2 to i16
  %14 = trunc i32 %8 to i8
  %15 = add nuw nsw i8 %14, 1
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i8 %14, 2
  %18 = add nuw nsw i16 %13, 1
  %19 = zext i8 %2 to i32
  %20 = getelementptr i8, ptr %1, i32 %19
  store i8 %17, ptr %20, align 1
  %21 = add nuw nsw i16 %13, 2
  %22 = zext i16 %18 to i32
  %23 = getelementptr i8, ptr %1, i32 %22
  store i8 9, ptr %23, align 1
  %24 = zext i16 %21 to i32
  %25 = getelementptr i8, ptr %1, i32 %24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %7, i32 %16, i1 false) #9
  %26 = trunc i16 %21 to i8
  %27 = add nuw nsw i8 %15, %26
  br label %61

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 14
  %30 = tail call i32 @strlen(ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = zext i8 %2 to i16
  %34 = trunc i32 %30 to i8
  %35 = add i8 %34, 1
  %36 = zext i8 %35 to i32
  %37 = add i8 %34, 2
  %38 = add nuw nsw i16 %33, 1
  %39 = zext i8 %2 to i32
  %40 = getelementptr i8, ptr %1, i32 %39
  store i8 %37, ptr %40, align 1
  %41 = add nuw nsw i16 %33, 2
  %42 = zext i16 %38 to i32
  %43 = getelementptr i8, ptr %1, i32 %42
  store i8 8, ptr %43, align 1
  %44 = zext i16 %41 to i32
  %45 = getelementptr i8, ptr %1, i32 %44
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %45, ptr align 1 %29, i32 %36, i1 false) #9
  %46 = trunc i16 %41 to i8
  %47 = add i8 %35, %46
  br label %61

48:                                               ; preds = %28
  br i1 %9, label %61, label %49

49:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef align 1 dereferenceable(10) %7, i32 10, i1 false)
  %50 = zext i8 %2 to i16
  %51 = add nuw nsw i16 %50, 1
  %52 = zext i8 %2 to i32
  %53 = getelementptr i8, ptr %1, i32 %52
  store i8 12, ptr %53, align 1
  %54 = add nuw nsw i16 %50, 2
  %55 = zext i16 %51 to i32
  %56 = getelementptr i8, ptr %1, i32 %55
  store i8 8, ptr %56, align 1
  %57 = zext i16 %54 to i32
  %58 = getelementptr i8, ptr %1, i32 %57
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %58, ptr noundef nonnull align 1 dereferenceable(10) %4, i32 10, i1 false)
  %59 = getelementptr inbounds i8, ptr %58, i32 10
  store i8 0, ptr %59, align 1
  %60 = add nuw nsw i8 %2, 13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4)
  br label %61

61:                                               ; preds = %49, %48, %32, %12, %3
  %62 = phi i8 [ %27, %12 ], [ %47, %32 ], [ %60, %49 ], [ %2, %3 ], [ %2, %48 ]
  ret i8 %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @eir_append_appearance(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = zext i8 %2 to i16
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 16
  %6 = load i16, ptr %5, align 2
  %7 = add nuw nsw i16 %4, 1
  %8 = zext i8 %2 to i32
  %9 = getelementptr i8, ptr %1, i32 %8
  store i8 3, ptr %9, align 1
  %10 = add nuw nsw i16 %4, 2
  %11 = zext i16 %7 to i32
  %12 = getelementptr i8, ptr %1, i32 %11
  store i8 25, ptr %12, align 1
  %13 = zext i16 %10 to i32
  %14 = getelementptr i8, ptr %1, i32 %13
  store i16 %6, ptr %14, align 1
  %15 = add i8 %2, 4
  ret i8 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eir_create(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 13
  %4 = tail call i32 @strlen(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i32 %4, 48
  %8 = select i1 %7, i8 8, i8 9
  %9 = call i32 @llvm.umin.i32(i32 %4, i32 48)
  %10 = getelementptr i8, ptr %1, i32 1
  store i8 %8, ptr %10, align 1
  %11 = trunc i32 %9 to i8
  %12 = add nuw nsw i8 %11, 1
  store i8 %12, ptr %1, align 1
  %13 = getelementptr i8, ptr %1, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %3, i32 %9, i1 false)
  %14 = add nuw nsw i32 %9, 2
  %15 = getelementptr i8, ptr %1, i32 %14
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi ptr [ %15, %6 ], [ %1, %2 ]
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 38
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 127
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  store i8 2, ptr %17, align 1
  %22 = getelementptr i8, ptr %17, i32 1
  store i8 10, ptr %22, align 1
  %23 = load i8, ptr %18, align 1
  %24 = getelementptr i8, ptr %17, i32 2
  store i8 %23, ptr %24, align 1
  %25 = getelementptr i8, ptr %17, i32 3
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi ptr [ %25, %21 ], [ %17, %16 ]
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 82
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  store i8 9, ptr %27, align 1
  %32 = getelementptr i8, ptr %27, i32 1
  store i8 16, ptr %32, align 1
  %33 = load i16, ptr %28, align 2
  %34 = getelementptr i8, ptr %27, i32 2
  store i16 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 83
  %36 = load i16, ptr %35, align 8
  %37 = getelementptr i8, ptr %27, i32 4
  store i16 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 84
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr i8, ptr %27, i32 6
  store i16 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 85
  %42 = load i16, ptr %41, align 4
  %43 = getelementptr i8, ptr %27, i32 8
  store i16 %42, ptr %43, align 1
  %44 = getelementptr i8, ptr %27, i32 10
  br label %45

45:                                               ; preds = %31, %26
  %46 = phi ptr [ %44, %31 ], [ %27, %26 ]
  %47 = ptrtoint ptr %46 to i32
  %48 = ptrtoint ptr %1 to i32
  %49 = sub i32 %48, %47
  %50 = add i32 %49, 240
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %100, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 187
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %100, label %56

56:                                               ; preds = %52
  %57 = sub i32 2, %47
  br label %58

58:                                               ; preds = %93, %56
  %59 = phi ptr [ %54, %56 ], [ %96, %93 ]
  %60 = phi ptr [ %46, %56 ], [ %95, %93 ]
  %61 = phi ptr [ null, %56 ], [ %94, %93 ]
  %62 = getelementptr inbounds %struct.bt_uuid, ptr %59, i32 0, i32 2
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 16
  br i1 %64, label %65, label %93

65:                                               ; preds = %58
  %66 = getelementptr %struct.bt_uuid, ptr %59, i32 0, i32 1, i32 12
  %67 = load i16, ptr %66, align 1
  %68 = icmp ult i16 %67, 4352
  %69 = icmp eq i16 %67, 4608
  %70 = or i1 %68, %69
  br i1 %70, label %93, label %71

71:                                               ; preds = %65
  %72 = icmp eq ptr %61, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  store i8 1, ptr %60, align 1
  %74 = getelementptr i8, ptr %60, i32 1
  store i8 3, ptr %74, align 1
  %75 = getelementptr i8, ptr %60, i32 2
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi ptr [ %61, %71 ], [ %60, %73 ]
  %78 = phi ptr [ %60, %71 ], [ %75, %73 ]
  %79 = ptrtoint ptr %78 to i32
  %80 = add i32 %57, %79
  %81 = icmp ugt i32 %80, %50
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = ptrtoint ptr %78 to i32
  %84 = getelementptr i8, ptr %77, i32 1
  store i8 2, ptr %84, align 1
  br label %100

85:                                               ; preds = %76
  %86 = trunc i16 %67 to i8
  %87 = getelementptr i8, ptr %78, i32 1
  store i8 %86, ptr %78, align 1
  %88 = lshr i16 %67, 8
  %89 = trunc i16 %88 to i8
  %90 = getelementptr i8, ptr %78, i32 2
  store i8 %89, ptr %87, align 1
  %91 = load i8, ptr %77, align 1
  %92 = add i8 %91, 2
  store i8 %92, ptr %77, align 1
  br label %93

93:                                               ; preds = %85, %65, %58
  %94 = phi ptr [ %77, %85 ], [ %61, %58 ], [ %61, %65 ]
  %95 = phi ptr [ %90, %85 ], [ %60, %58 ], [ %60, %65 ]
  %96 = load ptr, ptr %59, align 4
  %97 = icmp eq ptr %96, %53
  br i1 %97, label %98, label %58

98:                                               ; preds = %93
  %99 = ptrtoint ptr %95 to i32
  br label %100

100:                                              ; preds = %98, %82, %52, %45
  %101 = phi i32 [ %99, %98 ], [ %47, %45 ], [ %47, %52 ], [ %83, %82 ]
  %102 = phi ptr [ %95, %98 ], [ %46, %45 ], [ %46, %52 ], [ %78, %82 ]
  %103 = sub i32 %48, %101
  %104 = add i32 %103, 240
  %105 = icmp slt i32 %104, 6
  br i1 %105, label %146, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 187
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %146, label %110

110:                                              ; preds = %106
  %111 = sub i32 4, %101
  br label %112

112:                                              ; preds = %139, %110
  %113 = phi ptr [ %108, %110 ], [ %142, %139 ]
  %114 = phi ptr [ %102, %110 ], [ %141, %139 ]
  %115 = phi ptr [ null, %110 ], [ %140, %139 ]
  %116 = getelementptr inbounds %struct.bt_uuid, ptr %113, i32 0, i32 2
  %117 = load i8, ptr %116, align 4
  %118 = icmp eq i8 %117, 32
  br i1 %118, label %119, label %139

119:                                              ; preds = %112
  %120 = icmp eq ptr %115, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  store i8 1, ptr %114, align 1
  %122 = getelementptr i8, ptr %114, i32 1
  store i8 5, ptr %122, align 1
  %123 = getelementptr i8, ptr %114, i32 2
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi ptr [ %115, %119 ], [ %114, %121 ]
  %126 = phi ptr [ %114, %119 ], [ %123, %121 ]
  %127 = ptrtoint ptr %126 to i32
  %128 = add i32 %111, %127
  %129 = icmp ugt i32 %128, %104
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = ptrtoint ptr %126 to i32
  %132 = getelementptr i8, ptr %125, i32 1
  store i8 4, ptr %132, align 1
  br label %146

133:                                              ; preds = %124
  %134 = getelementptr %struct.bt_uuid, ptr %113, i32 0, i32 1, i32 12
  %135 = load i32, ptr %134, align 4
  store i32 %135, ptr %126, align 1
  %136 = getelementptr i8, ptr %126, i32 4
  %137 = load i8, ptr %125, align 1
  %138 = add i8 %137, 4
  store i8 %138, ptr %125, align 1
  br label %139

139:                                              ; preds = %133, %112
  %140 = phi ptr [ %115, %112 ], [ %125, %133 ]
  %141 = phi ptr [ %114, %112 ], [ %136, %133 ]
  %142 = load ptr, ptr %113, align 4
  %143 = icmp eq ptr %142, %107
  br i1 %143, label %144, label %112

144:                                              ; preds = %139
  %145 = ptrtoint ptr %141 to i32
  br label %146

146:                                              ; preds = %144, %130, %106, %100
  %147 = phi i32 [ %145, %144 ], [ %101, %100 ], [ %101, %106 ], [ %131, %130 ]
  %148 = phi ptr [ %141, %144 ], [ %102, %100 ], [ %102, %106 ], [ %126, %130 ]
  %149 = sub i32 %48, %147
  %150 = add i32 %149, 240
  %151 = icmp slt i32 %150, 18
  br i1 %151, label %188, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 187
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %153
  br i1 %155, label %188, label %156

156:                                              ; preds = %152
  %157 = sub i32 16, %147
  br label %158

158:                                              ; preds = %183, %156
  %159 = phi ptr [ %154, %156 ], [ %186, %183 ]
  %160 = phi ptr [ %148, %156 ], [ %185, %183 ]
  %161 = phi ptr [ null, %156 ], [ %184, %183 ]
  %162 = getelementptr inbounds %struct.bt_uuid, ptr %159, i32 0, i32 2
  %163 = load i8, ptr %162, align 4
  %164 = icmp eq i8 %163, -128
  br i1 %164, label %165, label %183

165:                                              ; preds = %158
  %166 = icmp eq ptr %161, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  store i8 1, ptr %160, align 1
  %168 = getelementptr i8, ptr %160, i32 1
  store i8 7, ptr %168, align 1
  %169 = getelementptr i8, ptr %160, i32 2
  br label %170

170:                                              ; preds = %167, %165
  %171 = phi ptr [ %161, %165 ], [ %160, %167 ]
  %172 = phi ptr [ %160, %165 ], [ %169, %167 ]
  %173 = ptrtoint ptr %172 to i32
  %174 = add i32 %157, %173
  %175 = icmp sgt i32 %174, %150
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = getelementptr i8, ptr %171, i32 1
  store i8 6, ptr %177, align 1
  br label %188

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.bt_uuid, ptr %159, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %172, ptr noundef align 4 dereferenceable(16) %179, i32 16, i1 false) #9
  %180 = getelementptr i8, ptr %172, i32 16
  %181 = load i8, ptr %171, align 1
  %182 = add i8 %181, 16
  store i8 %182, ptr %171, align 1
  br label %183

183:                                              ; preds = %178, %158
  %184 = phi ptr [ %161, %158 ], [ %171, %178 ]
  %185 = phi ptr [ %160, %158 ], [ %180, %178 ]
  %186 = load ptr, ptr %159, align 4
  %187 = icmp eq ptr %186, %153
  br i1 %187, label %188, label %158

188:                                              ; preds = %183, %176, %152, %146
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @eir_create_adv_data(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @hci_adv_instance_flags(ptr noundef %0, i8 noundef zeroext 0) #9
  br label %41

7:                                                ; preds = %3
  %8 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %1) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %111, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @hci_adv_instance_flags(ptr noundef %0, i8 noundef zeroext %1) #9
  %12 = getelementptr inbounds %struct.adv_info, ptr %8, i32 0, i32 8
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp ult i16 %13, 2
  br i1 %15, label %41, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.adv_info, ptr %8, i32 0, i32 9
  %18 = add nsw i32 %14, -1
  br label %19

19:                                               ; preds = %38, %16
  %20 = phi i32 [ %27, %38 ], [ 0, %16 ]
  %21 = phi ptr [ %39, %38 ], [ %17, %16 ]
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  %25 = zext i8 %22 to i32
  %26 = add nuw nsw i32 %25, 1
  %27 = add i32 %26, %20
  %28 = icmp ugt i32 %27, %14
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %21, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = icmp eq i8 %22, 1
  %35 = getelementptr i8, ptr %21, i32 2
  %36 = icmp eq ptr %35, null
  %37 = or i1 %34, %36
  br i1 %37, label %41, label %69

38:                                               ; preds = %29
  %39 = getelementptr i8, ptr %21, i32 %26
  %40 = icmp ult i32 %27, %18
  br i1 %40, label %19, label %41

41:                                               ; preds = %38, %33, %24, %19, %10, %5
  %42 = phi i32 [ %6, %5 ], [ %11, %10 ], [ %11, %33 ], [ %11, %24 ], [ %11, %19 ], [ %11, %38 ]
  %43 = phi ptr [ null, %5 ], [ %8, %10 ], [ %8, %33 ], [ %8, %24 ], [ %8, %19 ], [ %8, %38 ]
  %44 = trunc i32 %42 to i8
  %45 = and i8 %44, 2
  %46 = lshr i8 %44, 2
  %47 = and i8 %46, 1
  %48 = or i8 %47, %45
  %49 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  %53 = or i8 %48, 4
  %54 = select i1 %52, i8 %53, i8 %48
  %55 = icmp eq i8 %54, 0
  %56 = and i32 %42, 8
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %68, label %59

59:                                               ; preds = %41
  br i1 %55, label %60, label %63

60:                                               ; preds = %59
  %61 = tail call zeroext i8 @mgmt_get_adv_discov_flags(ptr noundef %0) #9
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %59
  %64 = phi i8 [ %61, %60 ], [ %54, %59 ]
  store i8 2, ptr %2, align 1
  %65 = getelementptr i8, ptr %2, i32 1
  store i8 1, ptr %65, align 1
  %66 = getelementptr i8, ptr %2, i32 2
  store i8 %64, ptr %66, align 1
  %67 = getelementptr i8, ptr %2, i32 3
  br i1 %4, label %83, label %69

68:                                               ; preds = %60, %41
  br i1 %4, label %83, label %69

69:                                               ; preds = %68, %63, %33
  %70 = phi i8 [ 0, %68 ], [ 3, %63 ], [ 0, %33 ]
  %71 = phi ptr [ %2, %68 ], [ %67, %63 ], [ %2, %33 ]
  %72 = phi ptr [ %43, %68 ], [ %43, %63 ], [ %8, %33 ]
  %73 = phi i32 [ %42, %68 ], [ %42, %63 ], [ %11, %33 ]
  %74 = getelementptr inbounds %struct.adv_info, ptr %72, i32 0, i32 9
  %75 = getelementptr inbounds %struct.adv_info, ptr %72, i32 0, i32 8
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %71, ptr align 4 %74, i32 %77, i1 false)
  %78 = load i16, ptr %75, align 2
  %79 = zext i16 %78 to i32
  %80 = trunc i16 %78 to i8
  %81 = add i8 %70, %80
  %82 = getelementptr i8, ptr %71, i32 %79
  br label %83

83:                                               ; preds = %69, %68, %63
  %84 = phi i32 [ %73, %69 ], [ %42, %68 ], [ %42, %63 ]
  %85 = phi i1 [ false, %69 ], [ true, %68 ], [ true, %63 ]
  %86 = phi ptr [ %72, %69 ], [ %43, %68 ], [ %43, %63 ]
  %87 = phi ptr [ %82, %69 ], [ %2, %68 ], [ %67, %63 ]
  %88 = phi i8 [ %81, %69 ], [ 0, %68 ], [ 3, %63 ]
  %89 = and i32 %84, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %83
  %92 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 16
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  br i1 %85, label %99, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.adv_info, ptr %86, i32 0, i32 12
  br label %103

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 208
  br label %103

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 208
  br label %103

103:                                              ; preds = %101, %99, %97
  %104 = phi ptr [ %98, %97 ], [ %100, %99 ], [ %102, %101 ]
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, 127
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  store i8 2, ptr %87, align 1
  %108 = getelementptr i8, ptr %87, i32 1
  store i8 10, ptr %108, align 1
  %109 = getelementptr i8, ptr %87, i32 2
  store i8 %105, ptr %109, align 1
  %110 = add i8 %88, 3
  br label %111

111:                                              ; preds = %107, %103, %83, %7
  %112 = phi i8 [ 0, %7 ], [ %88, %83 ], [ %110, %107 ], [ %88, %103 ]
  ret i8 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_adv_instance_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mgmt_get_adv_discov_flags(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @eir_create_scan_rsp(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 16
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  store i8 3, ptr %2, align 1
  %10 = getelementptr i8, ptr %2, i32 1
  store i8 25, ptr %10, align 1
  %11 = getelementptr i8, ptr %2, i32 2
  store i16 %7, ptr %11, align 1
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i8 [ 4, %9 ], [ 0, %5 ]
  %14 = tail call zeroext i8 @eir_append_local_name(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %13) #9
  br label %46

15:                                               ; preds = %3
  %16 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %1) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.adv_info, ptr %16, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  store i8 3, ptr %2, align 1
  %28 = getelementptr i8, ptr %2, i32 1
  store i8 25, ptr %28, align 1
  %29 = getelementptr i8, ptr %2, i32 2
  store i16 %25, ptr %29, align 1
  br label %30

30:                                               ; preds = %27, %23, %18
  %31 = phi i32 [ 4, %27 ], [ 0, %23 ], [ 0, %18 ]
  %32 = getelementptr i8, ptr %2, i32 %31
  %33 = getelementptr inbounds %struct.adv_info, ptr %16, i32 0, i32 11
  %34 = getelementptr inbounds %struct.adv_info, ptr %16, i32 0, i32 10
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 2 %33, i32 %36, i1 false)
  %37 = load i16, ptr %34, align 4
  %38 = zext i16 %37 to i32
  %39 = add nuw nsw i32 %31, %38
  %40 = trunc i32 %39 to i8
  %41 = load i32, ptr %19, align 4
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = tail call zeroext i8 @eir_append_local_name(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %40)
  br label %46

46:                                               ; preds = %44, %30, %15, %12
  %47 = phi i8 [ %14, %12 ], [ 0, %15 ], [ %45, %44 ], [ %40, %30 ]
  ret i8 %47
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
