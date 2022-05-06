; ModuleID = '/llk/IR/fs/pnode.c_pt.bc'
source_filename = "../fs/pnode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.60, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.61, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.61 = type { %struct.hlist_node }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mountpoint = type { %struct.hlist_node, ptr, %struct.hlist_head, i32 }

@last_dest = internal unnamed_addr global ptr null, align 4
@first_source = internal unnamed_addr global ptr null, align 4
@last_source = internal unnamed_addr global ptr null, align 4
@mp = internal unnamed_addr global ptr null, align 4
@list = internal unnamed_addr global ptr null, align 4
@dest_master = internal unnamed_addr global ptr null, align 4
@mount_lock = external dso_local global %struct.seqlock_t, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_dominating_id(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16
  br label %8

8:                                                ; preds = %30, %6
  %9 = phi ptr [ %4, %6 ], [ %32, %30 ]
  %10 = load ptr, ptr %7, align 4
  br label %11

11:                                               ; preds = %20, %8
  %12 = phi ptr [ %9, %8 ], [ %23, %20 ]
  %13 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @is_path_reachable(ptr noundef %12, ptr noundef %18, ptr noundef %1) #3
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -88
  %24 = icmp eq ptr %23, %9
  br i1 %24, label %30, label %11

25:                                               ; preds = %16
  %26 = icmp eq ptr %12, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 23
  %29 = load i32, ptr %28, align 4
  br label %34

30:                                               ; preds = %25, %20
  %31 = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %8

34:                                               ; preds = %30, %27, %2
  %35 = phi i32 [ %29, %27 ], [ 0, %2 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @change_mnt_propagation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1048576
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -12289
  %8 = or i32 %7, 4096
  store i32 %8, ptr %5, align 4
  br label %111

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 12
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  tail call void @mnt_release_group_id(ptr noundef %0) #3
  %19 = load i32, ptr %14, align 4
  %20 = and i32 %19, -4097
  store i32 %20, ptr %14, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 13
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %95, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %36, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %31, align 4
  %35 = getelementptr i8, ptr %30, i32 8
  store ptr null, ptr %35, align 4
  %36 = load volatile ptr, ptr %26, align 4
  %37 = icmp eq ptr %36, %26
  br i1 %37, label %95, label %29

38:                                               ; preds = %9
  %39 = getelementptr i8, ptr %11, i32 -88
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %54, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %49, %41
  %45 = phi ptr [ %39, %41 ], [ %52, %49 ]
  %46 = getelementptr inbounds %struct.mount, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %43
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mount, ptr %45, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 -88
  %53 = icmp eq ptr %52, %0
  br i1 %53, label %54, label %44

54:                                               ; preds = %49, %44, %38
  %55 = phi ptr [ %0, %38 ], [ %39, %49 ], [ %45, %44 ]
  %56 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 12, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %11, ptr %57, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %56, align 4
  %59 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 23
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, -4097
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %54, %21
  %64 = phi ptr [ %23, %21 ], [ %55, %54 ]
  %65 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 13
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %73, label %68

68:                                               ; preds = %68, %63
  %69 = phi ptr [ %71, %68 ], [ %66, %63 ]
  %70 = getelementptr i8, ptr %69, i32 8
  store ptr %64, ptr %70, align 4
  %71 = load ptr, ptr %69, align 4
  %72 = icmp eq ptr %71, %65
  br i1 %72, label %73, label %68

73:                                               ; preds = %68, %63
  %74 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 14
  %75 = getelementptr inbounds %struct.mount, ptr %64, i32 0, i32 13
  %76 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 14, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %74, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %77, ptr %79, align 4
  store volatile ptr %78, ptr %77, align 4
  %80 = load ptr, ptr %75, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %74, ptr %81, align 4
  store ptr %80, ptr %74, align 4
  store ptr %75, ptr %76, align 4
  store volatile ptr %74, ptr %75, align 4
  %82 = getelementptr inbounds %struct.mount, ptr %64, i32 0, i32 13, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load volatile ptr, ptr %65, align 4
  %85 = icmp eq ptr %84, %65
  br i1 %85, label %92, label %86

86:                                               ; preds = %73
  %87 = load ptr, ptr %83, align 4
  %88 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 13, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %83, ptr %90, align 4
  store ptr %84, ptr %83, align 4
  store ptr %87, ptr %89, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %89, ptr %91, align 4
  br label %92

92:                                               ; preds = %86, %73
  store volatile ptr %65, ptr %65, align 4
  %93 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 13, i32 1
  store ptr %65, ptr %93, align 4
  %94 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 15
  store ptr %64, ptr %94, align 4
  br label %95

95:                                               ; preds = %92, %29, %25
  %96 = icmp eq i32 %1, 524288
  br i1 %96, label %111, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 14
  %99 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 14, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %98, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  store ptr %100, ptr %102, align 4
  store volatile ptr %101, ptr %100, align 4
  store volatile ptr %98, ptr %98, align 4
  store ptr %98, ptr %99, align 4
  %103 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 15
  store ptr null, ptr %103, align 4
  %104 = icmp eq i32 %1, 131072
  %105 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %106 = load i32, ptr %105, align 4
  br i1 %104, label %107, label %109

107:                                              ; preds = %97
  %108 = or i32 %106, 8192
  store i32 %108, ptr %105, align 4
  br label %111

109:                                              ; preds = %97
  %110 = and i32 %106, -8193
  store i32 %110, ptr %105, align 4
  br label %111

111:                                              ; preds = %109, %107, %95, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @propagate_mnt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store ptr %0, ptr @last_dest, align 4
  store ptr %2, ptr @first_source, align 4
  store ptr %2, ptr @last_source, align 4
  store ptr %1, ptr @mp, align 4
  store ptr %3, ptr @list, align 4
  %5 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr @dest_master, align 4
  br label %7

7:                                                ; preds = %13, %4
  %8 = phi ptr [ %0, %4 ], [ %11, %13 ]
  %9 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -88
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @propagate_one(ptr noundef %11)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %7, label %139

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 23
  br label %18

18:                                               ; preds = %67, %16
  %19 = phi ptr [ %0, %16 ], [ %68, %67 ]
  %20 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mnt_namespace, ptr %21, i32 0, i32 6
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 13
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %69

31:                                               ; preds = %27, %23, %18
  %32 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 -88
  %35 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 23
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %17, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = icmp eq ptr %34, %0
  br i1 %40, label %139, label %67

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 14
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %33, i32 16
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %67, label %46

46:                                               ; preds = %59, %41
  %47 = phi ptr [ %61, %59 ], [ %43, %41 ]
  %48 = phi ptr [ %50, %59 ], [ %19, %41 ]
  %49 = getelementptr inbounds %struct.mount, ptr %48, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mount, ptr %50, i32 0, i32 13
  %52 = icmp eq ptr %47, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.mount, ptr %50, i32 0, i32 12
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.mount, ptr %50, i32 0, i32 23
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %37
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.mount, ptr %50, i32 0, i32 14
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %55, i32 16
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %46

64:                                               ; preds = %59, %53
  %65 = getelementptr i8, ptr %55, i32 -88
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %139, label %67

67:                                               ; preds = %64, %41, %39
  %68 = phi ptr [ %65, %64 ], [ %34, %41 ], [ %34, %39 ]
  br label %18

69:                                               ; preds = %46, %27
  %70 = phi ptr [ %47, %46 ], [ %29, %27 ]
  %71 = getelementptr i8, ptr %70, i32 -104
  %72 = icmp eq ptr %71, null
  br i1 %72, label %139, label %73

73:                                               ; preds = %135, %69
  %74 = phi ptr [ %137, %135 ], [ %71, %69 ]
  br label %75

75:                                               ; preds = %79, %73
  %76 = phi ptr [ %82, %79 ], [ %74, %73 ]
  %77 = tail call fastcc i32 @propagate_one(ptr noundef %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %139

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.mount, ptr %76, i32 0, i32 12
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 -88
  %83 = icmp eq ptr %82, %74
  br i1 %83, label %84, label %75

84:                                               ; preds = %133, %79
  %85 = phi ptr [ %134, %133 ], [ %74, %79 ]
  %86 = getelementptr inbounds %struct.mount, ptr %85, i32 0, i32 16
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.mnt_namespace, ptr %87, i32 0, i32 6
  %91 = load i64, ptr %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.mount, ptr %85, i32 0, i32 13
  %95 = load volatile ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %97, label %135

97:                                               ; preds = %93, %89, %84
  %98 = getelementptr inbounds %struct.mount, ptr %85, i32 0, i32 12
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 -88
  %101 = getelementptr inbounds %struct.mount, ptr %85, i32 0, i32 23
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %17, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = icmp eq ptr %100, %0
  br i1 %106, label %139, label %133

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.mount, ptr %85, i32 0, i32 14
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %99, i32 16
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %133, label %112

112:                                              ; preds = %125, %107
  %113 = phi ptr [ %127, %125 ], [ %109, %107 ]
  %114 = phi ptr [ %116, %125 ], [ %85, %107 ]
  %115 = getelementptr inbounds %struct.mount, ptr %114, i32 0, i32 15
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.mount, ptr %116, i32 0, i32 13
  %118 = icmp eq ptr %113, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.mount, ptr %116, i32 0, i32 12
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.mount, ptr %116, i32 0, i32 23
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, %103
  br i1 %124, label %130, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.mount, ptr %116, i32 0, i32 14
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %121, i32 16
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %130, label %112

130:                                              ; preds = %125, %119
  %131 = getelementptr i8, ptr %121, i32 -88
  %132 = icmp eq ptr %131, %0
  br i1 %132, label %139, label %133

133:                                              ; preds = %130, %107, %105
  %134 = phi ptr [ %131, %130 ], [ %100, %107 ], [ %100, %105 ]
  br label %84

135:                                              ; preds = %112, %93
  %136 = phi ptr [ %113, %112 ], [ %95, %93 ]
  %137 = getelementptr i8, ptr %136, i32 -104
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %73

139:                                              ; preds = %135, %130, %105, %75, %69, %64, %39, %13
  %140 = phi i32 [ 0, %69 ], [ 0, %105 ], [ 0, %130 ], [ %77, %75 ], [ 0, %135 ], [ 0, %39 ], [ 0, %64 ], [ %14, %13 ]
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #3
  %141 = load ptr, ptr %3, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %158, label %143

143:                                              ; preds = %155, %139
  %144 = phi ptr [ %156, %155 ], [ %141, %139 ]
  %145 = getelementptr inbounds %struct.mount, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.mount, ptr %146, i32 0, i32 15
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %5, align 4
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.mount, ptr %148, i32 0, i32 3, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, -67108865
  store i32 %154, ptr %152, align 4
  br label %155

155:                                              ; preds = %151, %143
  %156 = load ptr, ptr %144, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %143

158:                                              ; preds = %155, %139
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %159 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %160 = add i16 %159, 1
  store i16 %160, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @propagate_one(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %104, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mnt_namespace, ptr %3, i32 0, i32 6
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %104, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @mp, align 4
  %11 = getelementptr inbounds %struct.mountpoint, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @is_subdir(ptr noundef %12, ptr noundef %14) #3
  br i1 %15, label %16, label %104

16:                                               ; preds = %9
  %17 = load ptr, ptr @last_dest, align 4
  %18 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 23
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mount, ptr %17, i32 0, i32 23
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  %23 = icmp ne i32 %19, 0
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load ptr, ptr @last_source, align 4
  br label %73

27:                                               ; preds = %16
  %28 = load ptr, ptr @dest_master, align 4
  br label %29

29:                                               ; preds = %34, %27
  %30 = phi ptr [ %32, %34 ], [ %0, %27 ]
  %31 = getelementptr inbounds %struct.mount, ptr %30, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %28
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mount, ptr %32, i32 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 67108864
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %29, label %39

39:                                               ; preds = %34, %29
  %40 = phi ptr [ %28, %29 ], [ %32, %34 ]
  %41 = load ptr, ptr @first_source, align 4
  %42 = load ptr, ptr @last_source, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %66, label %44

44:                                               ; preds = %62, %39
  %45 = phi ptr [ %64, %62 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.mount, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %40
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.mount, ptr %30, i32 0, i32 23
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 23
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  %57 = icmp ne i32 %53, 0
  %58 = and i1 %57, %56
  br i1 %58, label %66, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.mount, ptr %45, i32 0, i32 15
  %61 = load ptr, ptr %60, align 4
  store ptr %61, ptr @last_source, align 4
  br label %66

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct.mount, ptr %45, i32 0, i32 15
  %64 = load ptr, ptr %63, align 4
  store ptr %64, ptr @last_source, align 4
  %65 = icmp eq ptr %64, %41
  br i1 %65, label %66, label %44

66:                                               ; preds = %62, %59, %51, %39
  %67 = phi ptr [ %41, %39 ], [ %45, %51 ], [ %61, %59 ], [ %41, %62 ]
  %68 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 4096
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 2, i32 10
  br label %73

73:                                               ; preds = %66, %25
  %74 = phi ptr [ %67, %66 ], [ %26, %25 ]
  %75 = phi i32 [ %72, %66 ], [ 8, %25 ]
  %76 = getelementptr inbounds %struct.mount, ptr %74, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = tail call ptr @copy_tree(ptr noundef %74, ptr noundef %77, i32 noundef %75) #3
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = ptrtoint ptr %78 to i32
  br label %104

82:                                               ; preds = %73
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #3
  %83 = load ptr, ptr @mp, align 4
  tail call void @mnt_set_mountpoint(ptr noundef %0, ptr noundef %83, ptr noundef %78) #3
  %84 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 15
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr @dest_master, align 4
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.mount, ptr %85, i32 0, i32 3, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, 67108864
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %88, %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %93 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  store ptr %0, ptr @last_dest, align 4
  store ptr %78, ptr @last_source, align 4
  %95 = load ptr, ptr @list, align 4
  %96 = load ptr, ptr %95, align 4
  store volatile ptr %96, ptr %78, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.hlist_node, ptr %96, i32 0, i32 1
  store volatile ptr %78, ptr %99, align 4
  br label %100

100:                                              ; preds = %98, %92
  store volatile ptr %78, ptr %95, align 4
  %101 = getelementptr inbounds %struct.hlist_node, ptr %78, i32 0, i32 1
  store volatile ptr %95, ptr %101, align 4
  %102 = load ptr, ptr %2, align 4
  %103 = tail call i32 @count_mounts(ptr noundef %102, ptr noundef %78) #3
  br label %104

104:                                              ; preds = %100, %80, %9, %5, %1
  %105 = phi i32 [ %81, %80 ], [ %103, %100 ], [ 0, %5 ], [ 0, %1 ], [ 0, %9 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @propagate_mount_busy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call i32 @mnt_get_count(ptr noundef %0) #3
  %8 = icmp sgt i32 %7, %1
  %9 = zext i1 %8 to i32
  br label %108

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 6
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %108

14:                                               ; preds = %10
  %15 = tail call i32 @mnt_get_count(ptr noundef %0) #3
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %108, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mnt_namespace, ptr %19, i32 0, i32 6
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 13
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 -104
  br label %36

31:                                               ; preds = %25, %21, %17
  %32 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 -88
  %35 = icmp eq ptr %34, %4
  br i1 %35, label %108, label %36

36:                                               ; preds = %31, %29
  %37 = phi ptr [ %30, %29 ], [ %34, %31 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %108, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 2
  %41 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 15
  br label %42

42:                                               ; preds = %105, %39
  %43 = phi ptr [ %37, %39 ], [ %106, %105 ]
  %44 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %40, align 4
  %46 = tail call ptr @__lookup_mnt(ptr noundef %44, ptr noundef %45) #3
  %47 = icmp eq ptr %46, null
  br i1 %47, label %72, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 6
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 6, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %50, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %50, i32 -40
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp ne ptr %58, %60
  %62 = getelementptr i8, ptr %50, i32 -52
  %63 = icmp eq ptr %62, null
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %52, %48
  %66 = load volatile ptr, ptr %49, align 4
  %67 = icmp eq ptr %66, %49
  br i1 %67, label %68, label %72

68:                                               ; preds = %65, %56
  %69 = phi i32 [ 1, %65 ], [ 2, %56 ]
  %70 = tail call i32 @mnt_get_count(ptr noundef nonnull %46) #3
  %71 = icmp sgt i32 %70, %69
  br i1 %71, label %108, label %72

72:                                               ; preds = %68, %65, %42
  %73 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 16
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.mnt_namespace, ptr %74, i32 0, i32 6
  %78 = load i64, ptr %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 13
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %82, i32 -104
  br label %105

86:                                               ; preds = %80, %76, %72
  %87 = load ptr, ptr %41, align 4
  br label %88

88:                                               ; preds = %98, %86
  %89 = phi ptr [ %43, %86 ], [ %91, %98 ]
  %90 = getelementptr inbounds %struct.mount, ptr %89, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %87
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.mount, ptr %89, i32 0, i32 12
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 -88
  %97 = icmp eq ptr %96, %4
  br i1 %97, label %108, label %105

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.mount, ptr %89, i32 0, i32 14
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.mount, ptr %91, i32 0, i32 13
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %88, label %103

103:                                              ; preds = %98
  %104 = getelementptr i8, ptr %100, i32 -104
  br label %105

105:                                              ; preds = %103, %93, %84
  %106 = phi ptr [ %85, %84 ], [ %104, %103 ], [ %96, %93 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %42

108:                                              ; preds = %105, %93, %68, %36, %31, %14, %10, %6
  %109 = phi i32 [ %9, %6 ], [ 1, %14 ], [ 1, %10 ], [ 0, %36 ], [ 0, %31 ], [ 0, %93 ], [ 0, %105 ], [ 1, %68 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lookup_mnt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @propagate_mount_unlock(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %6, !prof !12

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/pnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 6
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 13
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 -104
  br label %25

20:                                               ; preds = %14, %10, %6
  %21 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -88
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %77, label %25

25:                                               ; preds = %20, %18
  %26 = phi ptr [ %19, %18 ], [ %23, %20 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %77, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 2
  %30 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 15
  br label %31

31:                                               ; preds = %74, %28
  %32 = phi ptr [ %26, %28 ], [ %75, %74 ]
  %33 = getelementptr inbounds %struct.mount, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %29, align 4
  %35 = tail call ptr @__lookup_mnt(ptr noundef %33, ptr noundef %34) #3
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 3, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -8388609
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = getelementptr inbounds %struct.mount, ptr %32, i32 0, i32 16
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mnt_namespace, ptr %43, i32 0, i32 6
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mount, ptr %32, i32 0, i32 13
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %51, i32 -104
  br label %74

55:                                               ; preds = %49, %45, %41
  %56 = load ptr, ptr %30, align 4
  br label %57

57:                                               ; preds = %67, %55
  %58 = phi ptr [ %32, %55 ], [ %60, %67 ]
  %59 = getelementptr inbounds %struct.mount, ptr %58, i32 0, i32 15
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %56
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mount, ptr %58, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 -88
  %66 = icmp eq ptr %65, %3
  br i1 %66, label %77, label %74

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.mount, ptr %58, i32 0, i32 14
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mount, ptr %60, i32 0, i32 13
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %57, label %72

72:                                               ; preds = %67
  %73 = getelementptr i8, ptr %69, i32 -104
  br label %74

74:                                               ; preds = %72, %62, %53
  %75 = phi ptr [ %54, %53 ], [ %73, %72 ], [ %65, %62 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %31

77:                                               ; preds = %74, %62, %25, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @propagate_umount(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  store ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  store ptr %4, ptr %4, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %240, label %11

11:                                               ; preds = %188, %1
  %12 = phi ptr [ %190, %188 ], [ %9, %1 ]
  %13 = getelementptr i8, ptr %12, i32 -64
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 60
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %18, label %188

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 4
  store ptr %15, ptr %7, align 4
  store ptr %4, ptr %15, align 4
  %20 = getelementptr i8, ptr %12, i32 64
  store ptr %19, ptr %20, align 4
  store volatile ptr %15, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mnt_namespace, ptr %22, i32 0, i32 6
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 13
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %30, i32 -104
  br label %39

34:                                               ; preds = %28, %24, %18
  %35 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 -88
  %38 = icmp eq ptr %37, %14
  br i1 %38, label %188, label %39

39:                                               ; preds = %34, %32
  %40 = phi ptr [ %33, %32 ], [ %37, %34 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %188, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %12, i32 -60
  %44 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 15
  br label %45

45:                                               ; preds = %185, %42
  %46 = phi ptr [ %40, %42 ], [ %186, %185 ]
  %47 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %43, align 4
  %49 = call ptr @__lookup_mnt(ptr noundef %47, ptr noundef %48) #3
  %50 = icmp eq ptr %49, null
  br i1 %50, label %151, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.mount, ptr %49, i32 0, i32 19
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 16
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %151, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mnt_namespace, ptr %57, i32 0, i32 6
  %61 = load i64, ptr %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %151, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 13
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %151, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 13, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 -104
  br label %151

71:                                               ; preds = %51
  %72 = getelementptr inbounds %struct.mount, ptr %49, i32 0, i32 3, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 134217728
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = and i32 %73, 201326592
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %151

79:                                               ; preds = %71
  %80 = load ptr, ptr %7, align 4
  store ptr %52, ptr %7, align 4
  store ptr %4, ptr %52, align 4
  %81 = getelementptr inbounds %struct.mount, ptr %49, i32 0, i32 19, i32 1
  store ptr %80, ptr %81, align 4
  store volatile ptr %52, ptr %80, align 4
  br label %151

82:                                               ; preds = %146, %76
  %83 = phi ptr [ %142, %146 ], [ %49, %76 ]
  %84 = phi i32 [ %148, %146 ], [ %73, %76 ]
  %85 = phi ptr [ %144, %146 ], [ %52, %76 ]
  %86 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 3, i32 2
  %87 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 6
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %110, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  br label %93

93:                                               ; preds = %107, %90
  %94 = phi ptr [ %88, %90 ], [ %108, %107 ]
  %95 = getelementptr i8, ptr %94, i32 -40
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %92
  br i1 %97, label %107, label %98

98:                                               ; preds = %93
  %99 = getelementptr i8, ptr %94, i32 80
  %100 = load volatile ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, %99
  br i1 %101, label %133, label %102

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %94, i32 -28
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 67108864
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %133, label %107

107:                                              ; preds = %102, %93
  %108 = load ptr, ptr %94, align 4
  %109 = icmp eq ptr %108, %87
  br i1 %109, label %110, label %93

110:                                              ; preds = %107, %82
  %111 = or i32 %84, 67108864
  store i32 %111, ptr %86, align 4
  %112 = and i32 %84, 8388608
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = and i32 %84, -201326593
  %116 = or i32 %115, 134217728
  store i32 %116, ptr %86, align 4
  %117 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 7
  %118 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 7, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %117, align 4
  %121 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %119, ptr %121, align 4
  store volatile ptr %120, ptr %119, align 4
  store volatile ptr %117, ptr %117, align 4
  store ptr %117, ptr %118, align 4
  %122 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 19
  %123 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 19, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %122, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %124, ptr %126, align 4
  store volatile ptr %125, ptr %124, align 4
  store volatile ptr %122, ptr %122, align 4
  store ptr %122, ptr %123, align 4
  %127 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 10
  %128 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 10, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %127, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %129, ptr %131, align 4
  store volatile ptr %130, ptr %129, align 4
  %132 = load ptr, ptr %6, align 4
  store ptr %127, ptr %6, align 4
  store ptr %3, ptr %127, align 4
  store ptr %132, ptr %128, align 4
  store volatile ptr %127, ptr %132, align 4
  br label %140

133:                                              ; preds = %110, %102, %98
  %134 = phi i1 [ true, %110 ], [ false, %102 ], [ false, %98 ]
  %135 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 19
  %136 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 19, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %137, ptr %138, align 4
  store volatile ptr %85, ptr %137, align 4
  %139 = load ptr, ptr %5, align 4
  store ptr %135, ptr %5, align 4
  store ptr %2, ptr %135, align 4
  store ptr %139, ptr %136, align 4
  store volatile ptr %135, ptr %139, align 4
  br i1 %134, label %140, label %151

140:                                              ; preds = %133, %114
  %141 = getelementptr inbounds %struct.mount, ptr %83, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.mount, ptr %142, i32 0, i32 19
  %144 = load volatile ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, %143
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.mount, ptr %142, i32 0, i32 3, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 201326592
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %82, label %151

151:                                              ; preds = %146, %140, %133, %79, %76, %67, %63, %59, %55, %45
  %152 = phi ptr [ %46, %79 ], [ %46, %45 ], [ %46, %59 ], [ %46, %63 ], [ %70, %67 ], [ %46, %55 ], [ %46, %76 ], [ %46, %146 ], [ %46, %133 ], [ %46, %140 ]
  %153 = getelementptr inbounds %struct.mount, ptr %152, i32 0, i32 16
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %166, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.mnt_namespace, ptr %154, i32 0, i32 6
  %158 = load i64, ptr %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.mount, ptr %152, i32 0, i32 13
  %162 = load volatile ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, %161
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = getelementptr i8, ptr %162, i32 -104
  br label %185

166:                                              ; preds = %160, %156, %151
  %167 = load ptr, ptr %44, align 4
  br label %168

168:                                              ; preds = %178, %166
  %169 = phi ptr [ %152, %166 ], [ %171, %178 ]
  %170 = getelementptr inbounds %struct.mount, ptr %169, i32 0, i32 15
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, %167
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.mount, ptr %169, i32 0, i32 12
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr i8, ptr %175, i32 -88
  %177 = icmp eq ptr %176, %14
  br i1 %177, label %188, label %185

178:                                              ; preds = %168
  %179 = getelementptr inbounds %struct.mount, ptr %169, i32 0, i32 14
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.mount, ptr %171, i32 0, i32 13
  %182 = icmp eq ptr %180, %181
  br i1 %182, label %168, label %183

183:                                              ; preds = %178
  %184 = getelementptr i8, ptr %180, i32 -104
  br label %185

185:                                              ; preds = %183, %173, %164
  %186 = phi ptr [ %165, %164 ], [ %184, %183 ], [ %176, %173 ]
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %45

188:                                              ; preds = %185, %173, %39, %34, %11
  %189 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, %0
  br i1 %191, label %192, label %11

192:                                              ; preds = %188
  %193 = load ptr, ptr %3, align 8
  %194 = icmp eq ptr %193, %3
  br i1 %194, label %240, label %198

195:                                              ; preds = %238, %198
  %196 = load ptr, ptr %199, align 4
  %197 = icmp eq ptr %196, %3
  br i1 %197, label %240, label %198

198:                                              ; preds = %195, %192
  %199 = phi ptr [ %196, %195 ], [ %193, %192 ]
  %200 = getelementptr i8, ptr %199, i32 -28
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, %200
  br i1 %202, label %195, label %203

203:                                              ; preds = %198
  %204 = getelementptr i8, ptr %199, i32 -56
  br label %205

205:                                              ; preds = %238, %203
  %206 = phi ptr [ %201, %203 ], [ %207, %238 ]
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr i8, ptr %206, i32 -40
  %209 = load ptr, ptr %208, align 4
  %210 = load ptr, ptr %204, align 4
  %211 = icmp eq ptr %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %205
  %213 = getelementptr i8, ptr %206, i32 80
  %214 = getelementptr i8, ptr %206, i32 84
  %215 = load ptr, ptr %214, align 4
  %216 = load ptr, ptr %213, align 4
  %217 = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  store ptr %215, ptr %217, align 4
  store volatile ptr %216, ptr %215, align 4
  %218 = load ptr, ptr %5, align 4
  store ptr %213, ptr %5, align 4
  store ptr %2, ptr %213, align 4
  store ptr %218, ptr %214, align 4
  store volatile ptr %213, ptr %218, align 4
  br label %238

219:                                              ; preds = %205
  %220 = getelementptr i8, ptr %206, i32 -28
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, -201326593
  %223 = or i32 %222, 134217728
  store i32 %223, ptr %220, align 4
  %224 = getelementptr i8, ptr %206, i32 4
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.list_head, ptr %207, i32 0, i32 1
  store ptr %225, ptr %226, align 4
  store volatile ptr %207, ptr %225, align 4
  store volatile ptr %206, ptr %206, align 4
  store ptr %206, ptr %224, align 4
  %227 = getelementptr i8, ptr %206, i32 80
  %228 = getelementptr i8, ptr %206, i32 84
  %229 = load ptr, ptr %228, align 4
  %230 = load ptr, ptr %227, align 4
  %231 = getelementptr inbounds %struct.list_head, ptr %230, i32 0, i32 1
  store ptr %229, ptr %231, align 4
  store volatile ptr %230, ptr %229, align 4
  store volatile ptr %227, ptr %227, align 4
  store ptr %227, ptr %228, align 4
  %232 = getelementptr i8, ptr %206, i32 20
  %233 = getelementptr i8, ptr %206, i32 24
  %234 = load ptr, ptr %233, align 4
  %235 = load ptr, ptr %232, align 4
  %236 = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  store ptr %234, ptr %236, align 4
  store volatile ptr %235, ptr %234, align 4
  %237 = load ptr, ptr %6, align 4
  store ptr %232, ptr %6, align 4
  store ptr %3, ptr %232, align 4
  store ptr %237, ptr %233, align 4
  store volatile ptr %232, ptr %237, align 4
  br label %238

238:                                              ; preds = %219, %212
  %239 = icmp eq ptr %207, %200
  br i1 %239, label %195, label %205

240:                                              ; preds = %195, %192, %1
  %241 = load volatile ptr, ptr %2, align 8
  %242 = icmp eq ptr %241, %2
  br i1 %242, label %275, label %243

243:                                              ; preds = %272, %240
  %244 = phi ptr [ %273, %272 ], [ %241, %240 ]
  %245 = getelementptr i8, ptr %244, i32 -132
  %246 = getelementptr i8, ptr %244, i32 -108
  %247 = load i32, ptr %246, align 4
  %248 = and i32 %247, -67108865
  store i32 %248, ptr %246, align 4
  %249 = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = load ptr, ptr %244, align 4
  %252 = getelementptr inbounds %struct.list_head, ptr %251, i32 0, i32 1
  store ptr %250, ptr %252, align 4
  store volatile ptr %251, ptr %250, align 4
  store volatile ptr %244, ptr %244, align 4
  store ptr %244, ptr %249, align 4
  %253 = getelementptr i8, ptr %244, i32 -124
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.mount, ptr %254, i32 0, i32 3, i32 2
  %256 = load i32, ptr %255, align 4
  %257 = and i32 %256, 134217728
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %272, label %259

259:                                              ; preds = %259, %243
  %260 = phi ptr [ %262, %259 ], [ %254, %243 ]
  %261 = getelementptr inbounds %struct.mount, ptr %260, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.mount, ptr %262, i32 0, i32 3, i32 2
  %264 = load i32, ptr %263, align 4
  %265 = and i32 %264, 134217728
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %259

267:                                              ; preds = %259
  %268 = icmp eq ptr %262, %254
  br i1 %268, label %272, label %269

269:                                              ; preds = %267
  %270 = getelementptr inbounds %struct.mount, ptr %260, i32 0, i32 17
  %271 = load ptr, ptr %270, align 4
  call void @mnt_change_mountpoint(ptr noundef %262, ptr noundef %271, ptr noundef %245) #3
  br label %272

272:                                              ; preds = %269, %267, %243
  %273 = load volatile ptr, ptr %2, align 8
  %274 = icmp eq ptr %273, %2
  br i1 %274, label %275, label %243

275:                                              ; preds = %272, %240
  %276 = load volatile ptr, ptr %4, align 8
  %277 = icmp eq ptr %276, %4
  br i1 %277, label %286, label %278

278:                                              ; preds = %278, %275
  %279 = phi ptr [ %284, %278 ], [ %276, %275 ]
  %280 = getelementptr inbounds %struct.list_head, ptr %279, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = load ptr, ptr %279, align 4
  %283 = getelementptr inbounds %struct.list_head, ptr %282, i32 0, i32 1
  store ptr %281, ptr %283, align 4
  store volatile ptr %282, ptr %281, align 4
  store volatile ptr %279, ptr %279, align 4
  store ptr %279, ptr %280, align 4
  %284 = load volatile ptr, ptr %4, align 8
  %285 = icmp eq ptr %284, %4
  br i1 %285, label %286, label %278

286:                                              ; preds = %278, %275
  %287 = load volatile ptr, ptr %3, align 8
  %288 = icmp eq ptr %287, %3
  br i1 %288, label %293, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr %8, align 4
  %291 = load ptr, ptr %6, align 4
  %292 = getelementptr inbounds %struct.list_head, ptr %287, i32 0, i32 1
  store ptr %290, ptr %292, align 4
  store ptr %287, ptr %290, align 4
  store ptr %0, ptr %291, align 4
  store ptr %291, ptr %8, align 4
  br label %293

293:                                              ; preds = %289, %286
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_path_reachable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_release_group_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_subdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_tree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_set_mountpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @count_mounts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_change_mountpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 2148872055}
!9 = !{i64 2148867879}
!10 = !{i64 2148867954, i64 2148867981, i64 2148868028, i64 2148868050, i64 2148868078, i64 2148868098}
!11 = !{i64 2148895058}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2151419832, i64 2151420307, i64 2151419869, i64 2151419925, i64 2151419959, i64 2151419983, i64 2151420024, i64 2151420045, i64 2151420073, i64 2151420107}
