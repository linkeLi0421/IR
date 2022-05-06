; ModuleID = '/llk/IR/fs/ubifs/master.c_pt.bc'
source_filename = "../fs/ubifs/master.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }

@.str = private unnamed_addr constant [27 x i8] c"bad leb_cnt on master node\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"!c->ro_media && !c->ro_mount\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"fs/ubifs/master.c\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"unexpected node type %d master LEB %d:%d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"bad master node at offset %d error %d\00", align 1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ubifs_compare_master_node(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 24
  %5 = getelementptr i8, ptr %2, i32 24
  %6 = tail call i32 @memcmp(ptr noundef dereferenceable(272) %4, ptr noundef dereferenceable(272) %5, i32 noundef 272)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 360
  %10 = getelementptr i8, ptr %2, i32 360
  %11 = tail call i32 @memcmp(ptr noundef dereferenceable(152) %9, ptr noundef dereferenceable(152) %10, i32 noundef 152)
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %6, %3 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_master(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 90
  %3 = load i32, ptr %2, align 4
  %4 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #7
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 46
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %427, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @ubifs_scan(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef %9, i32 noundef 1) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %74, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %10, i32 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %67

22:                                               ; preds = %16
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %25, i32 %27, i1 false) #8
  %28 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %22, %12
  %31 = phi i32 [ %29, %22 ], [ 0, %12 ]
  tail call void @ubifs_scan_destroy(ptr noundef %10) #8
  %32 = load ptr, ptr %8, align 8
  %33 = tail call ptr @ubifs_scan(ptr noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef %32, i32 noundef 1) #8
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %74, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %37, %14
  %39 = icmp eq i32 %37, 0
  %40 = or i1 %38, %39
  br i1 %40, label %66, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %33, i32 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ubifs_scan_node, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 7
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ubifs_scan_node, ptr %43, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %31
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.ubifs_scan_node, ptr %43, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %52, i32 24
  %56 = getelementptr i8, ptr %54, i32 24
  %57 = tail call i32 @bcmp(ptr noundef dereferenceable(272) %55, ptr noundef dereferenceable(272) %56, i32 272) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = getelementptr i8, ptr %52, i32 360
  %61 = getelementptr i8, ptr %54, i32 360
  %62 = tail call i32 @bcmp(ptr noundef dereferenceable(152) %60, ptr noundef dereferenceable(152) %61, i32 152) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 47
  store i32 %31, ptr %65, align 8
  tail call void @ubifs_scan_destroy(ptr noundef %33) #8
  br label %82

66:                                               ; preds = %59, %51, %47, %35
  tail call void @ubifs_scan_destroy(ptr noundef %33) #8
  br label %77

67:                                               ; preds = %41, %16
  %68 = phi i32 [ %20, %16 ], [ %45, %41 ]
  %69 = phi i32 [ 1, %16 ], [ 2, %41 ]
  %70 = phi ptr [ %18, %16 ], [ %43, %41 ]
  %71 = phi ptr [ %10, %16 ], [ %33, %41 ]
  %72 = getelementptr inbounds %struct.ubifs_scan_node, ptr %70, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %68, i32 noundef %69, i32 noundef %73) #8
  tail call void @ubifs_scan_destroy(ptr noundef %71) #8
  br label %427

74:                                               ; preds = %30, %7
  %75 = phi ptr [ %10, %7 ], [ %33, %30 ]
  %76 = ptrtoint ptr %75 to i32
  switch i32 %76, label %79 [
    i32 0, label %82
    i32 -117, label %77
  ]

77:                                               ; preds = %74, %66
  %78 = tail call i32 @ubifs_recover_master_node(ptr noundef %0) #8
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %78, %77 ], [ %76, %74 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %427

82:                                               ; preds = %79, %74, %64
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr inbounds %struct.ubifs_mst_node, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 1
  %86 = and i32 %85, -5
  store i32 %86, ptr %84, align 1
  %87 = load ptr, ptr %5, align 4
  %88 = getelementptr inbounds %struct.ubifs_ch, ptr %87, i32 0, i32 2
  %89 = load i64, ptr %88, align 1
  %90 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 3
  store i64 %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 1
  %92 = load i64, ptr %91, align 1
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 2
  store i32 %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 2
  %96 = load i64, ptr %95, align 1
  %97 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  store i64 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 5
  %99 = load i32, ptr %98, align 1
  %100 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  %101 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 2
  store i32 %99, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 6
  %103 = load i32, ptr %102, align 1
  %104 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 3
  store i32 %103, ptr %104, align 8
  %105 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 7
  %106 = load i32, ptr %105, align 1
  %107 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 4
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 4
  %109 = load i32, ptr %108, align 1
  %110 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 9
  store i32 %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 8
  %112 = load i32, ptr %111, align 1
  %113 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 9
  %115 = load i32, ptr %114, align 1
  %116 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  store i32 %115, ptr %116, align 8
  %117 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 10
  %118 = load i32, ptr %117, align 1
  %119 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 40
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 11
  %121 = load i64, ptr %120, align 1
  %122 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 4
  store i64 %121, ptr %122, align 8
  %123 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 17
  %124 = load i32, ptr %123, align 1
  %125 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 18
  %127 = load i32, ptr %126, align 1
  %128 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  store i32 %127, ptr %128, align 8
  %129 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 19
  %130 = load i32, ptr %129, align 1
  %131 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  store i32 %130, ptr %131, align 4
  %132 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 20
  %133 = load i32, ptr %132, align 1
  %134 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  store i32 %133, ptr %134, align 8
  %135 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 21
  %136 = load i32, ptr %135, align 1
  %137 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  store i32 %136, ptr %137, align 8
  %138 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 22
  %139 = load i32, ptr %138, align 1
  %140 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 23
  %142 = load i32, ptr %141, align 1
  %143 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  store i32 %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 24
  %145 = load i32, ptr %144, align 1
  %146 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  store i32 %145, ptr %146, align 8
  %147 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 25
  %148 = load i32, ptr %147, align 1
  %149 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 174
  store i32 %148, ptr %149, align 8
  %150 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 26
  %151 = load i32, ptr %150, align 1
  %152 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  store i32 %151, ptr %152, align 8
  %153 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 27
  %154 = load i32, ptr %153, align 1
  %155 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  store i32 %154, ptr %155, align 8
  %156 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 28
  %157 = load i32, ptr %156, align 1
  %158 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 12
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 3
  store i64 %159, ptr %160, align 8
  %161 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 13
  %162 = load i64, ptr %161, align 1
  %163 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 4
  store i64 %162, ptr %163, align 8
  %164 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 14
  %165 = load i64, ptr %164, align 1
  %166 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 5
  store i64 %165, ptr %166, align 8
  %167 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 15
  %168 = load i64, ptr %167, align 1
  %169 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 6
  store i64 %168, ptr %169, align 8
  %170 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 16
  %171 = load i64, ptr %170, align 1
  %172 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 7
  store i64 %171, ptr %172, align 8
  %173 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 88
  store i64 %121, ptr %173, align 8
  %174 = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 3
  %175 = load i32, ptr %174, align 1
  %176 = and i32 %175, 2
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %82
  %179 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 116
  store i32 1, ptr %179, align 4
  br label %180

180:                                              ; preds = %178, %82
  %181 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %182 = load i32, ptr %181, align 8
  %183 = icmp eq i32 %182, %157
  br i1 %183, label %214, label %184

184:                                              ; preds = %180
  %185 = icmp slt i32 %182, %157
  %186 = icmp slt i32 %182, 17
  %187 = or i1 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str) #8
  %189 = load ptr, ptr %5, align 4
  %190 = load i32, ptr %2, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %189, i32 noundef %190) #8
  br label %427

191:                                              ; preds = %184
  %192 = sub i32 %182, %157
  %193 = add i32 %192, %151
  store i32 %193, ptr %152, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %196 = load i32, ptr %195, align 8
  %197 = sext i32 %196 to i64
  %198 = mul nsw i64 %197, %194
  %199 = add i64 %198, %159
  store i64 %199, ptr %160, align 8
  %200 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %201 = load i32, ptr %200, align 4
  %202 = sext i32 %201 to i64
  %203 = mul nsw i64 %202, %194
  %204 = add i64 %203, %171
  store i64 %204, ptr %172, align 8
  store i32 %182, ptr %156, align 1
  %205 = load i32, ptr %152, align 8
  %206 = load ptr, ptr %5, align 4
  %207 = getelementptr inbounds %struct.ubifs_mst_node, ptr %206, i32 0, i32 26
  store i32 %205, ptr %207, align 1
  %208 = load i64, ptr %160, align 8
  %209 = load ptr, ptr %5, align 4
  %210 = getelementptr inbounds %struct.ubifs_mst_node, ptr %209, i32 0, i32 12
  store i64 %208, ptr %210, align 1
  %211 = load i64, ptr %172, align 8
  %212 = load ptr, ptr %5, align 4
  %213 = getelementptr inbounds %struct.ubifs_mst_node, ptr %212, i32 0, i32 16
  store i64 %211, ptr %213, align 1
  br label %214

214:                                              ; preds = %191, %180
  %215 = load i64, ptr %90, align 8
  %216 = icmp ugt i64 %215, -16777217
  br i1 %216, label %419, label %217

217:                                              ; preds = %214
  %218 = load i64, ptr %97, align 8
  %219 = icmp ult i64 %218, %215
  br i1 %219, label %220, label %419

220:                                              ; preds = %217
  %221 = load i32, ptr %94, align 8
  %222 = icmp ugt i32 %221, -257
  br i1 %222, label %419, label %223

223:                                              ; preds = %220
  %224 = load i32, ptr %110, align 4
  %225 = icmp slt i32 %224, 3
  br i1 %225, label %419, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 53
  %228 = load i32, ptr %227, align 8
  %229 = add i32 %228, 3
  %230 = icmp slt i32 %224, %229
  br i1 %230, label %231, label %419

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 10
  %233 = load i32, ptr %232, align 8
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %419, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %237 = load i32, ptr %236, align 8
  %238 = icmp slt i32 %233, %237
  br i1 %238, label %239, label %419

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %241 = load i32, ptr %240, align 8
  %242 = add i32 %241, -1
  %243 = and i32 %242, %233
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %419

245:                                              ; preds = %239
  %246 = load i32, ptr %101, align 4
  %247 = load i32, ptr %181, align 8
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %419

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %251 = load i32, ptr %250, align 8
  %252 = icmp slt i32 %246, %251
  br i1 %252, label %419, label %253

253:                                              ; preds = %249
  %254 = load i32, ptr %104, align 8
  %255 = icmp slt i32 %254, %237
  %256 = and i32 %254, 7
  %257 = icmp eq i32 %256, 0
  %258 = and i1 %255, %257
  br i1 %258, label %259, label %419

259:                                              ; preds = %253
  %260 = load i32, ptr %107, align 4
  %261 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 9
  %262 = load i32, ptr %261, align 4
  %263 = icmp slt i32 %260, %262
  br i1 %263, label %419, label %264

264:                                              ; preds = %259
  %265 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 9, i32 1
  %266 = load i32, ptr %265, align 4
  %267 = icmp sgt i32 %260, %266
  br i1 %267, label %419, label %268

268:                                              ; preds = %264
  %269 = load i32, ptr %113, align 4
  %270 = icmp sge i32 %269, %247
  %271 = icmp slt i32 %269, %251
  %272 = select i1 %270, i1 true, i1 %271
  br i1 %272, label %419, label %273

273:                                              ; preds = %268
  %274 = load i32, ptr %116, align 8
  %275 = icmp sge i32 %274, %247
  %276 = icmp slt i32 %274, %251
  %277 = select i1 %275, i1 true, i1 %276
  br i1 %277, label %419, label %278

278:                                              ; preds = %273
  %279 = load i32, ptr %119, align 4
  %280 = srem i32 %279, %241
  %281 = icmp eq i32 %280, 0
  %282 = icmp sgt i32 %279, -1
  %283 = icmp sle i32 %279, %237
  %284 = and i1 %282, %281
  %285 = select i1 %284, i1 %283, i1 false
  %286 = and i32 %279, 7
  %287 = icmp eq i32 %286, 0
  %288 = select i1 %285, i1 %287, i1 false
  br i1 %288, label %289, label %419

289:                                              ; preds = %278
  %290 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %291 = load i32, ptr %290, align 4
  %292 = sext i32 %291 to i64
  %293 = sext i32 %237 to i64
  %294 = mul nsw i64 %292, %293
  %295 = load i64, ptr %122, align 8
  %296 = and i64 %295, 7
  %297 = icmp eq i64 %296, 0
  %298 = icmp ult i64 %295, %294
  %299 = select i1 %297, i1 %298, i1 false
  br i1 %299, label %300, label %419

300:                                              ; preds = %289
  %301 = load i32, ptr %125, align 4
  %302 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %303 = load i32, ptr %302, align 8
  %304 = icmp slt i32 %301, %303
  br i1 %304, label %419, label %305

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %307 = load i32, ptr %306, align 4
  %308 = icmp sgt i32 %301, %307
  br i1 %308, label %419, label %309

309:                                              ; preds = %305
  %310 = load i32, ptr %128, align 8
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %419, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %314 = load i32, ptr %313, align 8
  %315 = add i32 %314, %310
  %316 = icmp sgt i32 %315, %237
  br i1 %316, label %419, label %317

317:                                              ; preds = %312
  %318 = load i32, ptr %131, align 4
  %319 = icmp slt i32 %318, %303
  %320 = icmp sgt i32 %318, %307
  %321 = select i1 %319, i1 true, i1 %320
  br i1 %321, label %419, label %322

322:                                              ; preds = %317
  %323 = load i32, ptr %134, align 8
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %419, label %325

325:                                              ; preds = %322
  %326 = srem i32 %323, %241
  %327 = icmp ne i32 %326, 0
  %328 = icmp sgt i32 %323, %237
  %329 = select i1 %327, i1 true, i1 %328
  br i1 %329, label %419, label %330

330:                                              ; preds = %325
  %331 = load i32, ptr %137, align 8
  %332 = icmp slt i32 %331, %303
  %333 = icmp sgt i32 %331, %307
  %334 = select i1 %332, i1 true, i1 %333
  br i1 %334, label %419, label %335

335:                                              ; preds = %330
  %336 = load i32, ptr %140, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %419, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %340 = load i32, ptr %339, align 8
  %341 = add i32 %340, %336
  %342 = icmp sgt i32 %341, %237
  br i1 %342, label %419, label %343

343:                                              ; preds = %338
  %344 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %345 = load i16, ptr %344, align 4
  %346 = and i16 %345, 1
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %361, label %348

348:                                              ; preds = %343
  %349 = load i32, ptr %143, align 4
  %350 = icmp slt i32 %349, %303
  %351 = icmp sgt i32 %349, %307
  %352 = select i1 %350, i1 true, i1 %351
  br i1 %352, label %419, label %353

353:                                              ; preds = %348
  %354 = load i32, ptr %146, align 8
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %419, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %358 = load i32, ptr %357, align 4
  %359 = add i32 %358, %354
  %360 = icmp sgt i32 %359, %237
  br i1 %360, label %419, label %361

361:                                              ; preds = %356, %343
  %362 = load i32, ptr %149, align 8
  %363 = icmp sge i32 %362, %251
  %364 = icmp slt i32 %362, %247
  %365 = select i1 %363, i1 %364, i1 false
  br i1 %365, label %366, label %419

366:                                              ; preds = %361
  %367 = load i32, ptr %152, align 8
  %368 = icmp slt i32 %367, 0
  %369 = add i32 %291, -2
  %370 = icmp sgt i32 %367, %369
  %371 = select i1 %368, i1 true, i1 %370
  br i1 %371, label %419, label %372

372:                                              ; preds = %366
  %373 = load i32, ptr %155, align 8
  %374 = icmp slt i32 %373, 0
  %375 = add i32 %291, -1
  %376 = icmp sgt i32 %373, %375
  %377 = select i1 %374, i1 true, i1 %376
  br i1 %377, label %419, label %378

378:                                              ; preds = %372
  %379 = load i64, ptr %160, align 8
  %380 = icmp sgt i64 %379, -1
  %381 = icmp sle i64 %379, %294
  %382 = select i1 %380, i1 %381, i1 false
  %383 = and i64 %379, 7
  %384 = icmp eq i64 %383, 0
  %385 = and i1 %382, %384
  br i1 %385, label %386, label %419

386:                                              ; preds = %378
  %387 = load i64, ptr %163, align 8
  %388 = and i64 %387, -9223372036854775801
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %390, label %419

390:                                              ; preds = %386
  %391 = load i64, ptr %166, align 8
  %392 = and i64 %391, -9223372036854775801
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %419

394:                                              ; preds = %390
  %395 = add nuw i64 %387, %379
  %396 = add i64 %391, %395
  %397 = icmp sgt i64 %396, %294
  br i1 %397, label %419, label %398

398:                                              ; preds = %394
  %399 = load i64, ptr %169, align 8
  %400 = load i64, ptr %172, align 8
  %401 = add i64 %391, %295
  %402 = add i64 %401, %399
  %403 = add i64 %402, %400
  %404 = icmp ugt i64 %403, %294
  br i1 %404, label %419, label %405

405:                                              ; preds = %398
  %406 = icmp sgt i64 %399, -1
  %407 = icmp sle i64 %399, %395
  %408 = select i1 %406, i1 %407, i1 false
  %409 = and i64 %399, 7
  %410 = icmp eq i64 %409, 0
  %411 = and i1 %408, %410
  br i1 %411, label %412, label %419

412:                                              ; preds = %405
  %413 = icmp sgt i64 %400, -1
  %414 = icmp sle i64 %400, %395
  %415 = select i1 %413, i1 %414, i1 false
  %416 = and i64 %400, 7
  %417 = icmp eq i64 %416, 0
  %418 = and i1 %415, %417
  br i1 %418, label %425, label %419

419:                                              ; preds = %412, %405, %398, %394, %390, %386, %378, %372, %366, %361, %356, %353, %348, %338, %335, %330, %325, %322, %317, %312, %309, %305, %300, %289, %278, %273, %268, %264, %259, %253, %249, %245, %239, %235, %231, %226, %223, %220, %217, %214
  %420 = phi i32 [ 1, %214 ], [ 2, %217 ], [ 3, %220 ], [ 4, %239 ], [ 4, %235 ], [ 4, %231 ], [ 4, %226 ], [ 4, %223 ], [ 5, %253 ], [ 5, %249 ], [ 5, %245 ], [ 6, %264 ], [ 6, %259 ], [ 7, %268 ], [ 8, %278 ], [ 8, %273 ], [ 9, %289 ], [ 10, %312 ], [ 10, %309 ], [ 10, %305 ], [ 10, %300 ], [ 11, %325 ], [ 11, %322 ], [ 11, %317 ], [ 12, %338 ], [ 12, %335 ], [ 12, %330 ], [ 13, %356 ], [ 13, %353 ], [ 13, %348 ], [ 14, %361 ], [ 15, %366 ], [ 16, %372 ], [ 17, %378 ], [ 18, %386 ], [ 19, %390 ], [ 20, %394 ], [ 21, %398 ], [ 22, %405 ], [ 23, %412 ]
  %421 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 47
  %422 = load i32, ptr %421, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %422, i32 noundef %420) #8
  %423 = load ptr, ptr %5, align 4
  %424 = load i32, ptr %2, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %423, i32 noundef %424) #8
  br label %427

425:                                              ; preds = %412
  %426 = tail call i32 @dbg_old_index_check_init(ptr noundef %0, ptr noundef %100) #8
  br label %427

427:                                              ; preds = %425, %419, %188, %79, %67, %1
  %428 = phi i32 [ %426, %425 ], [ -22, %188 ], [ -12, %1 ], [ %80, %79 ], [ -22, %419 ], [ -22, %67 ]
  ret i32 %428
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_recover_master_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_old_index_check_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_master(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 3
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 438) #8
  %7 = load i8, ptr %2, align 8
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i8 [ %7, %6 ], [ %3, %1 ]
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 47
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 90
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = add i32 %17, 512
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %20 = load i32, ptr %19, align 8
  %21 = icmp ugt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef 1) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %17, %12 ], [ 0, %22 ]
  store i32 %26, ptr %13, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 46
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ubifs_mst_node, ptr %31, i32 0, i32 1
  store i64 %29, ptr %32, align 1
  %33 = load ptr, ptr %30, align 4
  %34 = tail call i32 @ubifs_write_node_hmac(ptr noundef %0, ptr noundef %33, i32 noundef 512, i32 noundef 1, i32 noundef %26, i32 noundef 296) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = icmp eq i32 %26, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef 2) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %36
  %42 = load ptr, ptr %30, align 4
  %43 = tail call i32 @ubifs_write_node_hmac(ptr noundef %0, ptr noundef %42, i32 noundef 512, i32 noundef 2, i32 noundef %26, i32 noundef 296) #8
  br label %44

44:                                               ; preds = %41, %38, %25, %22, %8
  %45 = phi i32 [ %43, %41 ], [ -30, %8 ], [ %23, %22 ], [ %34, %25 ], [ %39, %38 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
