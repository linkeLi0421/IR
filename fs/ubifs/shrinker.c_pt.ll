; ModuleID = '/llk/IR/fs/ubifs/shrinker.c_pt.bc'
source_filename = "../fs/ubifs/shrinker.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.atomic_t = type { i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }

@ubifs_infos = dso_local global %struct.list_head { ptr @ubifs_infos, ptr @ubifs_infos }, align 4
@ubifs_infos_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@ubifs_clean_zn_cnt = dso_local global %struct.atomic_t zeroinitializer, align 4
@shrinker_run_no = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mutex_is_locked(&c->umount_mutex)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"fs/ubifs/shrinker.c\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"mutex_is_locked(&c->tnc_mutex)\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ubifs_shrink_count(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @ubifs_clean_zn_cnt, align 4
  %4 = icmp sgt i32 %3, -1
  %5 = select i1 %4, i32 %3, i32 1
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_shrink_scan(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %6 = load volatile i32, ptr @ubifs_clean_zn_cnt, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %79

8:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #5
  %9 = load ptr, ptr @ubifs_infos, align 4
  %10 = icmp eq ptr %9, @ubifs_infos
  br i1 %10, label %76, label %11

11:                                               ; preds = %47, %8
  %12 = phi ptr [ %48, %47 ], [ %9, %8 ]
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 @mutex_trylock(ptr noundef %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %53, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %17 = load i16, ptr @ubifs_infos_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @ubifs_infos_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %97

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %12, i32 -528
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %12, i32 -1700
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %12, i32 -536
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 6
  %31 = icmp ne i8 %30, 0
  %32 = icmp eq i32 %25, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %71, %27
  %35 = phi ptr [ %55, %71 ], [ %13, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %36 = load i16, ptr @ubifs_infos_lock, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr @ubifs_infos_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  tail call void @mutex_unlock(ptr noundef %35) #5
  br label %97

38:                                               ; preds = %71
  %39 = getelementptr i8, ptr %54, i32 -1888
  %40 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %54, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  %44 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  store ptr %54, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  store ptr @ubifs_infos, ptr %54, align 4
  store ptr %44, ptr %40, align 4
  store volatile ptr %54, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %45 = load i16, ptr @ubifs_infos_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @ubifs_infos_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  tail call void @ubifs_request_bg_commit(ptr noundef %39) #5
  tail call void @mutex_unlock(ptr noundef %55) #5
  br label %97

47:                                               ; preds = %27, %23, %19
  tail call void @mutex_unlock(ptr noundef %13) #5
  %48 = load ptr, ptr %12, align 4
  %49 = icmp eq ptr %48, @ubifs_infos
  br i1 %49, label %50, label %11

50:                                               ; preds = %47
  %51 = load ptr, ptr @ubifs_infos, align 4
  %52 = icmp eq ptr %51, @ubifs_infos
  br i1 %52, label %76, label %53

53:                                               ; preds = %73, %50
  %54 = phi ptr [ %74, %73 ], [ %51, %50 ]
  %55 = getelementptr i8, ptr %54, i32 8
  %56 = tail call i32 @mutex_trylock(ptr noundef %55) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %16, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %54, i32 -528
  %60 = load volatile i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %54, i32 -1700
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %54, i32 -536
  %68 = load i8, ptr %67, align 8
  %69 = and i8 %68, 6
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = icmp eq i32 %64, 0
  br i1 %72, label %38, label %34

73:                                               ; preds = %66, %62, %58
  tail call void @mutex_unlock(ptr noundef %55) #5
  %74 = load ptr, ptr %54, align 4
  %75 = icmp eq ptr %74, @ubifs_infos
  br i1 %75, label %76, label %53

76:                                               ; preds = %73, %50, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %77 = load i16, ptr @ubifs_infos_lock, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr @ubifs_infos_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %97

79:                                               ; preds = %2
  %80 = call fastcc i32 @shrink_tnc_trees(i32 noundef %5, i32 noundef 20, ptr noundef nonnull %3)
  %81 = icmp ugt i32 %5, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = sub i32 %5, %80
  %84 = call fastcc i32 @shrink_tnc_trees(i32 noundef %83, i32 noundef 5, ptr noundef nonnull %3)
  %85 = add i32 %84, %80
  %86 = icmp ugt i32 %5, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = sub i32 %5, %85
  %89 = call fastcc i32 @shrink_tnc_trees(i32 noundef %88, i32 noundef 0, ptr noundef nonnull %3)
  %90 = add i32 %89, %85
  %91 = icmp eq i32 %90, 0
  %92 = load i32, ptr %3, align 4
  %93 = icmp ne i32 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %97, label %95

95:                                               ; preds = %87, %82, %79
  %96 = phi i32 [ %80, %79 ], [ %85, %82 ], [ %90, %87 ]
  br label %97

97:                                               ; preds = %95, %87, %76, %38, %34, %16
  %98 = phi i32 [ %96, %95 ], [ -1, %87 ], [ 0, %76 ], [ -1, %34 ], [ -1, %38 ], [ -1, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @shrink_tnc_trees(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #5
  %4 = load i32, ptr @shrinker_run_no, align 4
  %5 = add i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 1, i32 %5
  store i32 %7, ptr @shrinker_run_no, align 4
  %8 = load ptr, ptr @ubifs_infos, align 4
  %9 = icmp eq ptr %8, @ubifs_infos
  br i1 %9, label %113, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %0, 0
  %12 = zext i32 %1 to i64
  br label %13

13:                                               ; preds = %102, %10
  %14 = phi i32 [ 0, %10 ], [ %104, %102 ]
  %15 = phi ptr [ %8, %10 ], [ %105, %102 ]
  br label %16

16:                                               ; preds = %25, %13
  %17 = phi ptr [ %26, %25 ], [ %15, %13 ]
  %18 = getelementptr i8, ptr %17, i32 28
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %113, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %17, i32 8
  %23 = tail call i32 @mutex_trylock(ptr noundef %22) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %32, %21
  store i32 1, ptr %2, align 4
  %26 = load ptr, ptr %17, align 4
  %27 = icmp eq ptr %26, @ubifs_infos
  br i1 %27, label %113, label %16

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %17, i32 -1624
  %30 = tail call i32 @mutex_trylock(ptr noundef %29) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef %22) #5
  br label %25

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %17, i32 -1888
  %35 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %36 = load i16, ptr @ubifs_infos_lock, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr @ubifs_infos_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  store i32 %7, ptr %35, align 4
  %38 = tail call i64 @ktime_get_seconds() #5
  %39 = tail call zeroext i1 @mutex_is_locked(ptr noundef %22) #5
  br i1 %39, label %41, label %40, !prof !12

40:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 64) #5
  br label %41

41:                                               ; preds = %40, %33
  %42 = tail call zeroext i1 @mutex_is_locked(ptr noundef %29) #5
  br i1 %42, label %44, label %43, !prof !12

43:                                               ; preds = %41
  tail call void @ubifs_assert_failed(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 65) #5
  br label %44

44:                                               ; preds = %43, %41
  %45 = getelementptr i8, ptr %17, i32 -1592
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %102, label %48

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %17, i32 -524
  %50 = load volatile i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %102, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @ubifs_tnc_levelorder_next(ptr noundef %34, ptr noundef nonnull %46, ptr noundef null) #5
  %54 = icmp ne ptr %53, null
  %55 = and i1 %11, %54
  br i1 %55, label %56, label %102

56:                                               ; preds = %96, %52
  %57 = phi i32 [ %93, %96 ], [ 0, %52 ]
  %58 = phi ptr [ %97, %96 ], [ %53, %52 ]
  %59 = phi ptr [ %92, %96 ], [ null, %52 ]
  %60 = load volatile i32, ptr %49, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ubifs_znode, ptr %58, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 1, ptr %2, align 4
  br label %91

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ubifs_znode, ptr %58, i32 0, i32 4
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ubifs_znode, ptr %58, i32 0, i32 5
  %74 = load i64, ptr %73, align 8
  %75 = sub i64 %38, %74
  %76 = tail call i64 @llvm.abs.i64(i64 %75, i1 false) #5
  %77 = icmp slt i64 %76, %12
  br i1 %77, label %91, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %58, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.ubifs_znode, ptr %58, i32 0, i32 8
  %83 = load i32, ptr %82, align 8
  %84 = getelementptr %struct.ubifs_znode, ptr %79, i32 0, i32 13, i32 %83, i32 1
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi ptr [ %84, %81 ], [ %45, %78 ]
  store ptr null, ptr %86, align 8
  %87 = tail call i32 @ubifs_destroy_tnc_subtree(ptr noundef %34, ptr noundef nonnull %58) #5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ubifs_clean_zn_cnt) #5, !srcloc !13
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 %87, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #5, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #5, !srcloc !13
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 %87, ptr elementtype(i32) %49) #5, !srcloc !14
  %90 = add i32 %87, %57
  br label %91

91:                                               ; preds = %85, %72, %67, %66
  %92 = phi ptr [ %58, %66 ], [ %58, %67 ], [ %59, %85 ], [ %58, %72 ]
  %93 = phi i32 [ %57, %66 ], [ %57, %67 ], [ %90, %85 ], [ %57, %72 ]
  %94 = load ptr, ptr %45, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96, !prof !15

96:                                               ; preds = %91
  %97 = tail call ptr @ubifs_tnc_levelorder_next(ptr noundef %34, ptr noundef nonnull %94, ptr noundef %92) #5
  %98 = tail call i32 @__cond_resched() #5
  %99 = icmp ne ptr %97, null
  %100 = icmp slt i32 %93, %0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %56, label %102

102:                                              ; preds = %96, %91, %56, %52, %48, %44
  %103 = phi i32 [ 0, %48 ], [ 0, %44 ], [ 0, %52 ], [ %93, %91 ], [ %57, %56 ], [ %93, %96 ]
  %104 = add i32 %103, %14
  tail call void @mutex_unlock(ptr noundef %29) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #5
  %105 = load ptr, ptr %17, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  store volatile ptr %105, ptr %107, align 4
  %109 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  store ptr %17, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  store ptr @ubifs_infos, ptr %17, align 4
  store ptr %109, ptr %106, align 4
  store volatile ptr %17, ptr %109, align 4
  tail call void @mutex_unlock(ptr noundef %22) #5
  %110 = icmp slt i32 %104, %0
  %111 = icmp ne ptr %105, @ubifs_infos
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %13, label %113

113:                                              ; preds = %102, %25, %16, %3
  %114 = phi i32 [ 0, %3 ], [ %14, %25 ], [ %14, %16 ], [ %104, %102 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %115 = load i16, ptr @ubifs_infos_lock, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr @ubifs_infos_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_request_bg_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_levelorder_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_destroy_tnc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2149082013}
!9 = !{i64 2149077837}
!10 = !{i64 2149077912, i64 2149077939, i64 2149077986, i64 2149078008, i64 2149078036, i64 2149078056}
!11 = !{i64 2149105016}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 463142, i64 2147953113, i64 2147953139, i64 2147953186, i64 2147953208, i64 2147953236, i64 2147953256}
!14 = !{i64 2147967682, i64 2147967708, i64 2147967737, i64 2147967771, i64 2147967802, i64 2147967825}
!15 = !{!"branch_weights", i32 1, i32 2000}
