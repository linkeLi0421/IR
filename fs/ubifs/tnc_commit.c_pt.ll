; ModuleID = '/llk/IR/fs/ubifs/tnc_commit.c_pt.bc'
source_filename = "../fs/ubifs/tnc_commit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.atomic_t = type { i32 }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }
%struct.ubifs_old_idx = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [40 x i8] c"atomic_long_read(&c->dirty_zn_cnt) == 0\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fs/ubifs/tnc_commit.c\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"c->bi.min_idx_lebs == ubifs_calc_min_idx_lebs(c)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"!ubifs_zn_cow(znode)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"cnt == atomic_long_read(&c->dirty_zn_cnt)\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"p < c->lst.idx_lebs\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"snod->type == UBIFS_IDX_NODE\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"(gap_start & 7) == 0\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"(gap_end & 7) == 0\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"gap_end >= gap_start\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"alen <= gap_remains\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"bad ref in znode\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"ubifs_zn_dirty(znode)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"ubifs_zn_cow(znode)\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"inconsistent znode posn\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"inconsistent ihead\00", align 1
@ubifs_clean_zn_cnt = external dso_local global %struct.atomic_t, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_start_commit(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_lprops, align 4
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = tail call i32 @dbg_check_tnc(ptr noundef %0, i32 noundef 1) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %646

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ubifs_znode, ptr %10, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %20

16:                                               ; preds = %30
  %17 = getelementptr inbounds %struct.ubifs_znode, ptr %28, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %16, %12
  %21 = phi ptr [ %28, %16 ], [ %10, %12 ]
  %22 = getelementptr inbounds %struct.ubifs_znode, ptr %21, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %35, %20
  %26 = phi i32 [ %36, %35 ], [ 0, %20 ]
  %27 = getelementptr %struct.ubifs_znode, ptr %21, i32 0, i32 13, i32 %26, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ubifs_znode, ptr %28, i32 0, i32 4
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %16

35:                                               ; preds = %30, %25
  %36 = add nuw nsw i32 %26, 1
  %37 = icmp eq i32 %36, %23
  br i1 %37, label %38, label %25

38:                                               ; preds = %35, %20, %16, %12
  %39 = phi ptr [ %10, %12 ], [ %21, %35 ], [ %28, %16 ], [ %21, %20 ]
  %40 = getelementptr inbounds %struct.ubifs_znode, ptr %39, i32 0, i32 4
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %8
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 33
  store ptr null, ptr %45, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 34
  store ptr null, ptr %46, align 4
  br label %608

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 33
  store ptr %39, ptr %48, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 34
  store ptr %39, ptr %49, align 4
  br label %50

50:                                               ; preds = %123, %47
  %51 = phi i32 [ %128, %123 ], [ 1, %47 ]
  %52 = phi ptr [ %124, %123 ], [ %39, %47 ]
  %53 = getelementptr inbounds %struct.ubifs_znode, ptr %52, i32 0, i32 4
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57, !prof !8

57:                                               ; preds = %50
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 655) #8
  %58 = load i32, ptr %53, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = phi i32 [ %58, %57 ], [ %54, %50 ]
  %61 = or i32 %60, 2
  store i32 %61, ptr %53, align 4
  %62 = getelementptr inbounds %struct.ubifs_znode, ptr %52, i32 0, i32 9
  store i32 0, ptr %62, align 4
  %63 = load ptr, ptr %52, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %117, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.ubifs_znode, ptr %52, i32 0, i32 8
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %67, 1
  %71 = icmp slt i32 %70, %69
  br i1 %71, label %72, label %123

72:                                               ; preds = %114, %65
  %73 = phi i32 [ %115, %114 ], [ %70, %65 ]
  %74 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 %73, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %114, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ubifs_znode, ptr %75, i32 0, i32 4
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %114, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ubifs_znode, ptr %75, i32 0, i32 6
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %108, label %90

86:                                               ; preds = %100
  %87 = getelementptr inbounds %struct.ubifs_znode, ptr %98, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %86, %82
  %91 = phi ptr [ %98, %86 ], [ %75, %82 ]
  %92 = getelementptr inbounds %struct.ubifs_znode, ptr %91, i32 0, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %105, %90
  %96 = phi i32 [ %106, %105 ], [ 0, %90 ]
  %97 = getelementptr %struct.ubifs_znode, ptr %91, i32 0, i32 13, i32 %96, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ubifs_znode, ptr %98, i32 0, i32 4
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %86

105:                                              ; preds = %100, %95
  %106 = add nuw nsw i32 %96, 1
  %107 = icmp eq i32 %106, %93
  br i1 %107, label %108, label %95

108:                                              ; preds = %105, %90, %86, %82
  %109 = phi ptr [ %75, %82 ], [ %91, %105 ], [ %91, %90 ], [ %98, %86 ]
  %110 = getelementptr inbounds %struct.ubifs_znode, ptr %109, i32 0, i32 4
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %123

114:                                              ; preds = %77, %72
  %115 = add i32 %73, 1
  %116 = icmp eq i32 %115, %69
  br i1 %116, label %123, label %72

117:                                              ; preds = %108, %59
  %118 = load ptr, ptr %48, align 8
  %119 = getelementptr inbounds %struct.ubifs_znode, ptr %52, i32 0, i32 1
  store ptr %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  %121 = load volatile i32, ptr %120, align 4
  %122 = icmp eq i32 %51, %121
  br i1 %122, label %130, label %129, !prof !8

123:                                              ; preds = %114, %108, %65
  %124 = phi ptr [ %63, %65 ], [ %109, %108 ], [ %63, %114 ]
  %125 = getelementptr inbounds %struct.ubifs_znode, ptr %52, i32 0, i32 2
  store ptr %63, ptr %125, align 8
  %126 = getelementptr inbounds %struct.ubifs_znode, ptr %52, i32 0, i32 3
  store i32 %67, ptr %126, align 4
  %127 = getelementptr inbounds %struct.ubifs_znode, ptr %52, i32 0, i32 1
  store ptr %124, ptr %127, align 4
  %128 = add i32 %51, 1
  br label %50

129:                                              ; preds = %117
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 670) #8
  br label %130

130:                                              ; preds = %129, %117
  %131 = icmp eq i32 %51, 0
  br i1 %131, label %608, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 42
  store i32 0, ptr %133, align 4
  %134 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 43
  store i32 0, ptr %134, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %136 = load i32, ptr %135, align 8
  %137 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 40
  %138 = load i32, ptr %137, align 4
  %139 = sub i32 %136, %138
  %140 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %141 = load i32, ptr %140, align 4
  %142 = sdiv i32 %139, %141
  %143 = sub i32 %51, %142
  %144 = tail call i32 @llvm.smax.i32(i32 %143, i32 0) #8
  %145 = sdiv i32 %136, %141
  %146 = add i32 %145, -1
  %147 = add i32 %146, %144
  %148 = sdiv i32 %147, %145
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %413, label %150

150:                                              ; preds = %132
  %151 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %148, i32 4) #8
  %152 = extractvalue { i32, i1 } %151, 1
  br i1 %152, label %153, label %155, !prof !9

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  store ptr null, ptr %154, align 8
  br label %627

155:                                              ; preds = %150
  %156 = extractvalue { i32, i1 } %151, 0
  %157 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %156, i32 noundef 3136) #9
  %158 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  store ptr %157, ptr %158, align 8
  %159 = icmp eq ptr %157, null
  br i1 %159, label %627, label %160

160:                                              ; preds = %164, %155
  %161 = phi i32 [ %169, %164 ], [ 0, %155 ]
  %162 = tail call i32 @ubifs_find_free_leb_for_idx(ptr noundef %0) #8
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %186, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %158, align 8
  %166 = load i32, ptr %133, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %133, align 4
  %168 = getelementptr i32, ptr %165, i32 %166
  store i32 %162, ptr %168, align 4
  %169 = add nuw nsw i32 %161, 1
  %170 = icmp eq i32 %169, %148
  br i1 %170, label %171, label %160

171:                                              ; preds = %164
  %172 = load i8, ptr @ubifs_dbg, align 4
  %173 = and i8 %172, 2
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.ubifs_debug_info, ptr %177, i32 0, i32 19
  %179 = load i8, ptr %178, align 4
  %180 = and i8 %179, 2
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %413, label %182

182:                                              ; preds = %175, %171
  %183 = tail call i32 @prandom_u32() #8
  %184 = and i32 %183, 7
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %413

186:                                              ; preds = %160
  %187 = icmp eq i32 %162, -28
  br i1 %187, label %188, label %627

188:                                              ; preds = %186, %182
  %189 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = add i32 %190, 1
  %192 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %191, i32 4) #8
  %193 = extractvalue { i32, i1 } %192, 1
  br i1 %193, label %194, label %196, !prof !9

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 35
  store ptr null, ptr %195, align 8
  br label %627

196:                                              ; preds = %188
  %197 = extractvalue { i32, i1 } %192, 0
  %198 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %197, i32 noundef 3136) #9
  %199 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 35
  store ptr %198, ptr %199, align 8
  %200 = icmp eq ptr %198, null
  br i1 %200, label %627, label %201

201:                                              ; preds = %196
  %202 = load i32, ptr %189, align 8
  %203 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 37
  %204 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 38
  %205 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 44
  br label %206

206:                                              ; preds = %407, %201
  %207 = phi i32 [ %202, %201 ], [ %408, %407 ]
  %208 = phi i32 [ 0, %201 ], [ %373, %407 ]
  %209 = phi i32 [ %202, %201 ], [ %405, %407 ]
  %210 = phi i32 [ %51, %201 ], [ %374, %407 ]
  %211 = icmp slt i32 %208, %207
  br i1 %211, label %213, label %212, !prof !8

212:                                              ; preds = %206
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 369) #8
  br label %213

213:                                              ; preds = %212, %206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %214 = call i32 @ubifs_find_dirty_idx_leb(ptr noundef %0) #8
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %349, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr %199, align 8
  %218 = getelementptr i32, ptr %217, i32 %208
  store i32 %214, ptr %218, align 4
  %219 = load ptr, ptr %203, align 8
  %220 = call ptr @ubifs_scan(ptr noundef %0, i32 noundef %214, i32 noundef 0, ptr noundef %219, i32 noundef 0) #8
  store i32 0, ptr %204, align 4
  %221 = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = ptrtoint ptr %220 to i32
  br label %351

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %220, i32 0, i32 2
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, %225
  br i1 %227, label %309, label %228

228:                                              ; preds = %304, %224
  %229 = phi ptr [ %307, %304 ], [ %226, %224 ]
  %230 = phi i32 [ %306, %304 ], [ 0, %224 ]
  %231 = phi i32 [ %305, %304 ], [ 0, %224 ]
  %232 = getelementptr inbounds %struct.ubifs_scan_node, ptr %229, i32 0, i32 3
  %233 = load i32, ptr %232, align 8
  %234 = icmp eq i32 %233, 9
  br i1 %234, label %236, label %235, !prof !8

235:                                              ; preds = %228
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 255) #8
  br label %236

236:                                              ; preds = %235, %228
  %237 = getelementptr inbounds %struct.ubifs_scan_node, ptr %229, i32 0, i32 6
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.ubifs_idx_node, ptr %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.ubifs_branch, ptr %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.ubifs_scan_node, ptr %229, i32 0, i32 1
  %242 = load i32, ptr %240, align 8
  store i32 %242, ptr %241, align 8
  %243 = getelementptr %struct.ubifs_idx_node, ptr %238, i32 1, i32 0, i32 3
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr [2 x i32], ptr %241, i32 0, i32 1
  store i32 %244, ptr %245, align 4
  %246 = getelementptr inbounds %struct.ubifs_idx_node, ptr %238, i32 0, i32 2
  %247 = load i16, ptr %246, align 1
  %248 = zext i16 %247 to i32
  %249 = getelementptr inbounds %struct.ubifs_scan_node, ptr %229, i32 0, i32 4
  %250 = load i32, ptr %249, align 4
  %251 = call i32 @is_idx_node_in_tnc(ptr noundef %0, ptr noundef %241, i32 noundef %248, i32 noundef %214, i32 noundef %250) #8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %281

253:                                              ; preds = %236
  %254 = load ptr, ptr %205, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %304, label %256

256:                                              ; preds = %277, %253
  %257 = phi ptr [ %279, %277 ], [ %254, %253 ]
  %258 = getelementptr inbounds %struct.ubifs_old_idx, ptr %257, i32 0, i32 1
  %259 = load i32, ptr %258, align 4
  %260 = icmp sgt i32 %259, %214
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.rb_node, ptr %257, i32 0, i32 2
  br label %277

263:                                              ; preds = %256
  %264 = icmp slt i32 %259, %214
  br i1 %264, label %265, label %267

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.rb_node, ptr %257, i32 0, i32 1
  br label %277

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.ubifs_old_idx, ptr %257, i32 0, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = icmp sgt i32 %269, %250
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.rb_node, ptr %257, i32 0, i32 2
  br label %277

273:                                              ; preds = %267
  %274 = icmp slt i32 %269, %250
  br i1 %274, label %275, label %285

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.rb_node, ptr %257, i32 0, i32 1
  br label %277

277:                                              ; preds = %275, %271, %265, %261
  %278 = phi ptr [ %262, %261 ], [ %266, %265 ], [ %272, %271 ], [ %276, %275 ]
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %304, label %256

281:                                              ; preds = %236
  %282 = icmp slt i32 %251, 0
  br i1 %282, label %347, label %283

283:                                              ; preds = %281
  %284 = icmp eq i32 %251, 1
  br i1 %284, label %285, label %292

285:                                              ; preds = %283, %273
  %286 = getelementptr inbounds %struct.ubifs_scan_node, ptr %229, i32 0, i32 5
  %287 = load i32, ptr %286, align 8
  %288 = add i32 %287, 7
  %289 = and i32 %288, -8
  %290 = load i32, ptr %3, align 4
  %291 = add i32 %289, %290
  store i32 %291, ptr %3, align 4
  br label %292

292:                                              ; preds = %285, %283
  %293 = load i32, ptr %249, align 4
  %294 = call fastcc i32 @fill_gap(ptr noundef %0, i32 noundef %214, i32 noundef %230, i32 noundef %293, ptr noundef nonnull %3) #8
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %347, label %296

296:                                              ; preds = %292
  %297 = add i32 %294, %231
  %298 = load i32, ptr %249, align 4
  %299 = getelementptr inbounds %struct.ubifs_scan_node, ptr %229, i32 0, i32 5
  %300 = load i32, ptr %299, align 8
  %301 = add i32 %298, 7
  %302 = add i32 %301, %300
  %303 = and i32 %302, -8
  br label %304

304:                                              ; preds = %296, %277, %253
  %305 = phi i32 [ %297, %296 ], [ %231, %253 ], [ %231, %277 ]
  %306 = phi i32 [ %303, %296 ], [ %230, %253 ], [ %230, %277 ]
  %307 = load ptr, ptr %229, align 4
  %308 = icmp eq ptr %307, %225
  br i1 %308, label %309, label %228

309:                                              ; preds = %304, %224
  %310 = phi i32 [ 0, %224 ], [ %305, %304 ]
  %311 = phi i32 [ 0, %224 ], [ %306, %304 ]
  call void @ubifs_scan_destroy(ptr noundef %220) #8
  %312 = load i32, ptr %135, align 8
  store i32 %312, ptr %204, align 4
  %313 = call fastcc i32 @fill_gap(ptr noundef %0, i32 noundef %214, i32 noundef %311, i32 noundef %312, ptr noundef nonnull %3) #8
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %349, label %315

315:                                              ; preds = %309
  %316 = add i32 %313, %310
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %334

318:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #8, !annotation !10
  %319 = call i32 @ubifs_read_one_lp(ptr noundef %0, i32 noundef %214, ptr noundef nonnull %4) #8
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %318
  %322 = load i32, ptr %4, align 4
  %323 = load i32, ptr %135, align 8
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %321
  %326 = load i32, ptr %204, align 4
  %327 = sub i32 %322, %326
  %328 = load i32, ptr %3, align 4
  %329 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %214, i32 noundef %327, i32 noundef %328, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %325, %321
  br label %332

332:                                              ; preds = %331, %325, %318
  %333 = phi i32 [ 0, %331 ], [ %319, %318 ], [ %329, %325 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %351

334:                                              ; preds = %315
  %335 = load i32, ptr %135, align 8
  %336 = load i32, ptr %204, align 4
  %337 = sub i32 %335, %336
  %338 = load i32, ptr %3, align 4
  %339 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %214, i32 noundef %337, i32 noundef %338, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %351

341:                                              ; preds = %334
  %342 = load ptr, ptr %203, align 8
  %343 = load i32, ptr %204, align 4
  %344 = call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %214, ptr noundef %342, i32 noundef %343) #8
  %345 = icmp eq i32 %344, 0
  %346 = select i1 %345, i32 %316, i32 %344
  br label %351

347:                                              ; preds = %292, %281
  %348 = phi i32 [ %251, %281 ], [ %294, %292 ]
  call void @ubifs_scan_destroy(ptr noundef %220) #8
  br label %349

349:                                              ; preds = %347, %309, %213
  %350 = phi i32 [ %348, %347 ], [ %214, %213 ], [ %313, %309 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %354

351:                                              ; preds = %341, %334, %332, %222
  %352 = phi i32 [ %223, %222 ], [ %333, %332 ], [ %339, %334 ], [ %346, %341 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %372

354:                                              ; preds = %351, %349
  %355 = phi i32 [ %350, %349 ], [ %352, %351 ]
  %356 = icmp eq i32 %355, -28
  br i1 %356, label %359, label %357

357:                                              ; preds = %354
  %358 = load ptr, ptr %199, align 8
  call void @kfree(ptr noundef %358) #8
  store ptr null, ptr %199, align 8
  br label %627

359:                                              ; preds = %354
  %360 = load i8, ptr @ubifs_dbg, align 4
  %361 = and i8 %360, 2
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %363, label %409

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.ubifs_debug_info, ptr %365, i32 0, i32 19
  %367 = load i8, ptr %366, align 4
  %368 = and i8 %367, 2
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %370, label %409

370:                                              ; preds = %363
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  %371 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  call void @ubifs_dump_budg(ptr noundef %0, ptr noundef %371) #8
  call void @ubifs_dump_lprops(ptr noundef %0) #8
  br label %409

372:                                              ; preds = %351
  %373 = add i32 %208, 1
  %374 = sub i32 %210, %352
  %375 = load i32, ptr %135, align 8
  %376 = load i32, ptr %137, align 4
  %377 = sub i32 %375, %376
  %378 = load i32, ptr %140, align 4
  %379 = sdiv i32 %377, %378
  %380 = sub i32 %374, %379
  %381 = call i32 @llvm.smax.i32(i32 %380, i32 0) #8
  %382 = sdiv i32 %375, %378
  %383 = add i32 %382, -1
  %384 = add i32 %383, %381
  %385 = sdiv i32 %384, %382
  %386 = load i32, ptr %133, align 4
  %387 = icmp sle i32 %385, %386
  %388 = icmp slt i32 %373, %209
  %389 = select i1 %387, i1 true, i1 %388
  br i1 %389, label %403, label %390

390:                                              ; preds = %372
  %391 = load i32, ptr %189, align 8
  %392 = icmp slt i32 %209, %391
  br i1 %392, label %393, label %403

393:                                              ; preds = %390
  %394 = load ptr, ptr %199, align 8
  %395 = shl i32 %391, 2
  %396 = add i32 %395, 4
  %397 = call noalias ptr @krealloc(ptr noundef %394, i32 noundef %396, i32 noundef 3136) #10
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %401

399:                                              ; preds = %393
  %400 = load ptr, ptr %199, align 8
  call void @kfree(ptr noundef %400) #8
  store ptr null, ptr %199, align 8
  br label %627

401:                                              ; preds = %393
  store ptr %397, ptr %199, align 8
  %402 = load i32, ptr %133, align 4
  br label %403

403:                                              ; preds = %401, %390, %372
  %404 = phi i32 [ %402, %401 ], [ %386, %390 ], [ %386, %372 ]
  %405 = phi i32 [ %391, %401 ], [ %209, %390 ], [ %209, %372 ]
  %406 = icmp sgt i32 %385, %404
  br i1 %406, label %407, label %409

407:                                              ; preds = %403
  %408 = load i32, ptr %189, align 8
  br label %206

409:                                              ; preds = %403, %370, %363, %359
  %410 = phi i32 [ %208, %363 ], [ %208, %370 ], [ %208, %359 ], [ %373, %403 ]
  %411 = load ptr, ptr %199, align 8
  %412 = getelementptr i32, ptr %411, i32 %410
  store i32 -1, ptr %412, align 4
  br label %413

413:                                              ; preds = %409, %182, %175, %132
  %414 = load ptr, ptr %49, align 4
  %415 = icmp eq ptr %414, null
  br i1 %415, label %584, label %416

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  %418 = load i32, ptr %417, align 8
  %419 = load i32, ptr %137, align 4
  %420 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %421 = load i32, ptr %420, align 4
  %422 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %423 = load i32, ptr %422, align 4
  %424 = add i32 %423, 12
  %425 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %426 = load i32, ptr %425, align 8
  %427 = add i32 %424, %426
  %428 = mul i32 %427, %421
  %429 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %430 = load i32, ptr %429, align 8
  %431 = add i32 %430, 27
  %432 = add i32 %431, %428
  %433 = sub i32 0, %430
  %434 = and i32 %432, %433
  %435 = getelementptr inbounds %struct.ubifs_znode, ptr %414, i32 0, i32 7
  %436 = load i32, ptr %435, align 4
  %437 = mul i32 %436, %427
  %438 = add i32 %419, 28
  %439 = add i32 %438, %437
  %440 = load i32, ptr %135, align 8
  %441 = icmp sgt i32 %439, %440
  %442 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  %443 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 2
  %444 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 3
  %445 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 4
  %446 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 88
  %447 = select i1 %441, i32 -1, i32 %418
  br label %448

448:                                              ; preds = %556, %416
  %449 = phi i32 [ %426, %416 ], [ %557, %556 ]
  %450 = phi i32 [ %423, %416 ], [ %558, %556 ]
  %451 = phi i32 [ %436, %416 ], [ %559, %556 ]
  %452 = phi ptr [ %414, %416 ], [ %499, %556 ]
  %453 = phi i32 [ %447, %416 ], [ %560, %556 ]
  %454 = phi i32 [ %419, %416 ], [ %561, %556 ]
  %455 = phi i32 [ 0, %416 ], [ %562, %556 ]
  %456 = phi i32 [ %434, %416 ], [ %563, %556 ]
  %457 = add i32 %449, 12
  %458 = add i32 %457, %450
  %459 = mul i32 %458, %451
  %460 = add i32 %459, 28
  %461 = icmp eq i32 %453, -1
  br i1 %461, label %462, label %472

462:                                              ; preds = %448
  %463 = load i32, ptr %134, align 8
  %464 = load i32, ptr %133, align 4
  %465 = icmp slt i32 %463, %464
  br i1 %465, label %467, label %466

466:                                              ; preds = %462
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  br label %627

467:                                              ; preds = %462
  %468 = load ptr, ptr %442, align 8
  %469 = add nsw i32 %463, 1
  store i32 %469, ptr %134, align 8
  %470 = getelementptr i32, ptr %468, i32 %463
  %471 = load i32, ptr %470, align 4
  br label %472

472:                                              ; preds = %467, %448
  %473 = phi i32 [ %471, %467 ], [ %453, %448 ]
  %474 = phi i32 [ 0, %467 ], [ %454, %448 ]
  %475 = phi i32 [ 0, %467 ], [ %455, %448 ]
  %476 = phi i32 [ %434, %467 ], [ %456, %448 ]
  %477 = add i32 %475, %474
  %478 = getelementptr inbounds %struct.ubifs_znode, ptr %452, i32 0, i32 10
  store i32 %473, ptr %478, align 8
  %479 = getelementptr inbounds %struct.ubifs_znode, ptr %452, i32 0, i32 11
  store i32 %477, ptr %479, align 4
  %480 = getelementptr inbounds %struct.ubifs_znode, ptr %452, i32 0, i32 12
  store i32 %460, ptr %480, align 8
  %481 = load ptr, ptr %452, align 8
  %482 = icmp eq ptr %481, null
  br i1 %482, label %489, label %483

483:                                              ; preds = %472
  %484 = getelementptr inbounds %struct.ubifs_znode, ptr %452, i32 0, i32 8
  %485 = load i32, ptr %484, align 8
  %486 = getelementptr %struct.ubifs_znode, ptr %481, i32 0, i32 13, i32 %485, i32 2
  store i32 %473, ptr %486, align 4
  %487 = getelementptr %struct.ubifs_znode, ptr %481, i32 0, i32 13, i32 %485, i32 3
  store i32 %477, ptr %487, align 8
  %488 = getelementptr %struct.ubifs_znode, ptr %481, i32 0, i32 13, i32 %485, i32 4
  br label %490

489:                                              ; preds = %472
  store i32 %473, ptr %443, align 4
  store i32 %477, ptr %444, align 8
  br label %490

490:                                              ; preds = %489, %483
  %491 = phi ptr [ %445, %489 ], [ %488, %483 ]
  store i32 %460, ptr %491, align 4
  %492 = add i32 %459, 35
  %493 = and i32 %492, -8
  %494 = sext i32 %493 to i64
  %495 = load i64, ptr %446, align 8
  %496 = add i64 %495, %494
  store i64 %496, ptr %446, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #8, !srcloc !11
  %497 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %120, ptr %120, i32 1, ptr elementtype(i32) %120) #8, !srcloc !12
  %498 = getelementptr inbounds %struct.ubifs_znode, ptr %452, i32 0, i32 1
  %499 = load ptr, ptr %498, align 4
  %500 = load ptr, ptr %48, align 8
  %501 = icmp eq ptr %499, %500
  br i1 %501, label %502, label %505

502:                                              ; preds = %490
  %503 = add i32 %475, %460
  %504 = add i32 %475, %493
  br label %564

505:                                              ; preds = %490
  %506 = getelementptr inbounds %struct.ubifs_znode, ptr %499, i32 0, i32 7
  %507 = load i32, ptr %506, align 4
  %508 = load i32, ptr %422, align 4
  %509 = add i32 %508, 12
  %510 = load i32, ptr %425, align 8
  %511 = add i32 %509, %510
  %512 = mul i32 %511, %507
  %513 = add i32 %512, 28
  %514 = add i32 %475, %460
  %515 = add i32 %475, %493
  %516 = icmp eq i32 %513, 0
  br i1 %516, label %564, label %517

517:                                              ; preds = %505
  %518 = sub i32 %476, %493
  %519 = add i32 %515, %474
  %520 = add i32 %519, %513
  %521 = load i32, ptr %135, align 8
  %522 = icmp sle i32 %520, %521
  %523 = icmp sgt i32 %518, 0
  %524 = select i1 %522, i1 %523, i1 false
  br i1 %524, label %556, label %525

525:                                              ; preds = %517
  %526 = icmp sgt i32 %520, %521
  %527 = select i1 %523, i1 true, i1 %526
  br i1 %527, label %528, label %534

528:                                              ; preds = %525
  %529 = load i32, ptr %429, align 8
  %530 = add i32 %514, -1
  %531 = add i32 %530, %529
  %532 = sub i32 0, %529
  %533 = and i32 %531, %532
  br label %534

534:                                              ; preds = %528, %525
  %535 = phi i32 [ %533, %528 ], [ %434, %525 ]
  %536 = add i32 %535, %474
  %537 = add i32 %536, %513
  %538 = icmp sgt i32 %537, %521
  br i1 %538, label %539, label %548

539:                                              ; preds = %534
  %540 = sub i32 %521, %536
  %541 = sub i32 %535, %515
  %542 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %473, i32 noundef %540, i32 noundef %541, i32 noundef 0, i32 noundef 0) #8
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %627

544:                                              ; preds = %539
  %545 = load i32, ptr %506, align 4
  %546 = load i32, ptr %422, align 4
  %547 = load i32, ptr %425, align 8
  br label %548

548:                                              ; preds = %544, %534
  %549 = phi i32 [ %510, %534 ], [ %547, %544 ]
  %550 = phi i32 [ %508, %534 ], [ %546, %544 ]
  %551 = phi i32 [ %507, %534 ], [ %545, %544 ]
  %552 = phi i32 [ %473, %534 ], [ -1, %544 ]
  %553 = sub i32 %515, %535
  %554 = call i32 @llvm.smax.i32(i32 %553, i32 0) #8
  %555 = sub i32 %434, %554
  br label %556

556:                                              ; preds = %548, %517
  %557 = phi i32 [ %510, %517 ], [ %549, %548 ]
  %558 = phi i32 [ %508, %517 ], [ %550, %548 ]
  %559 = phi i32 [ %507, %517 ], [ %551, %548 ]
  %560 = phi i32 [ %473, %517 ], [ %552, %548 ]
  %561 = phi i32 [ %474, %517 ], [ %536, %548 ]
  %562 = phi i32 [ %515, %517 ], [ %554, %548 ]
  %563 = phi i32 [ %518, %517 ], [ %555, %548 ]
  br label %448

564:                                              ; preds = %505, %502
  %565 = phi i32 [ %504, %502 ], [ %515, %505 ]
  %566 = phi i32 [ %503, %502 ], [ %514, %505 ]
  %567 = load i32, ptr %429, align 8
  %568 = add i32 %566, -1
  %569 = add i32 %568, %567
  %570 = sub i32 0, %567
  %571 = and i32 %569, %570
  %572 = add i32 %571, %474
  %573 = load i32, ptr %135, align 8
  %574 = sub i32 %573, %572
  %575 = sub i32 %571, %565
  %576 = call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %473, i32 noundef %574, i32 noundef %575, i32 noundef 0, i32 noundef 0) #8
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %627

578:                                              ; preds = %564
  %579 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %580 = load ptr, ptr %579, align 4
  %581 = getelementptr inbounds %struct.ubifs_debug_info, ptr %580, i32 0, i32 13
  store i32 %473, ptr %581, align 8
  %582 = load ptr, ptr %579, align 4
  %583 = getelementptr inbounds %struct.ubifs_debug_info, ptr %582, i32 0, i32 14
  store i32 %572, ptr %583, align 4
  br label %584

584:                                              ; preds = %578, %413
  %585 = load volatile i32, ptr %120, align 4
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %588, label %587, !prof !8

587:                                              ; preds = %584
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 778) #8
  br label %588

588:                                              ; preds = %587, %584
  %589 = load i32, ptr %134, align 8
  %590 = load i32, ptr %133, align 4
  %591 = icmp slt i32 %589, %590
  br i1 %591, label %592, label %608

592:                                              ; preds = %588
  %593 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  br label %594

594:                                              ; preds = %594, %592
  %595 = phi i32 [ %589, %592 ], [ %603, %594 ]
  %596 = phi i32 [ 0, %592 ], [ %602, %594 ]
  %597 = load ptr, ptr %593, align 8
  %598 = getelementptr i32, ptr %597, i32 %595
  %599 = load i32, ptr %598, align 4
  %600 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %599, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 48, i32 noundef 0) #8
  %601 = icmp eq i32 %596, 0
  %602 = select i1 %601, i32 %600, i32 %596
  %603 = add nsw i32 %595, 1
  %604 = load i32, ptr %133, align 4
  %605 = icmp slt i32 %603, %604
  br i1 %605, label %594, label %606

606:                                              ; preds = %594
  %607 = icmp eq i32 %602, 0
  br i1 %607, label %608, label %646

608:                                              ; preds = %606, %588, %130, %44
  call void @destroy_old_idx(ptr noundef %0) #8
  %609 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %1, ptr noundef align 8 dereferenceable(24) %609, i32 24, i1 false)
  %610 = call i32 @ubifs_save_dirty_idx_lnums(ptr noundef %0) #8
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %646

612:                                              ; preds = %608
  %613 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  call void @_raw_spin_lock(ptr noundef %613) #8
  %614 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  %615 = load i32, ptr %614, align 8
  %616 = call i32 @ubifs_calc_min_idx_lebs(ptr noundef %0) #8
  %617 = icmp eq i32 %615, %616
  br i1 %617, label %619, label %618, !prof !8

618:                                              ; preds = %612
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 799) #8
  br label %619

619:                                              ; preds = %618, %612
  %620 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 88
  %621 = load i64, ptr %620, align 8
  %622 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 4
  store i64 %621, ptr %622, align 8
  %623 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 3
  store i64 0, ptr %623, align 8
  %624 = call i32 @ubifs_calc_min_idx_lebs(ptr noundef %0) #8
  store i32 %624, ptr %614, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %625 = load i16, ptr %613, align 4
  %626 = add i16 %625, 1
  store i16 %626, ptr %613, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %646

627:                                              ; preds = %564, %539, %466, %399, %357, %196, %194, %186, %155, %153
  %628 = phi i32 [ %162, %186 ], [ -12, %155 ], [ -12, %153 ], [ %355, %357 ], [ -12, %399 ], [ -12, %196 ], [ -12, %194 ], [ %576, %564 ], [ -28, %466 ], [ %542, %539 ]
  %629 = load i32, ptr %134, align 8
  %630 = load i32, ptr %133, align 4
  %631 = icmp slt i32 %629, %630
  br i1 %631, label %632, label %643

632:                                              ; preds = %627
  %633 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  br label %634

634:                                              ; preds = %634, %632
  %635 = phi i32 [ %629, %632 ], [ %640, %634 ]
  %636 = load ptr, ptr %633, align 8
  %637 = getelementptr i32, ptr %636, i32 %635
  %638 = load i32, ptr %637, align 4
  %639 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %638, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 48, i32 noundef 0) #8
  %640 = add nsw i32 %635, 1
  %641 = load i32, ptr %133, align 4
  %642 = icmp slt i32 %640, %641
  br i1 %642, label %634, label %643

643:                                              ; preds = %634, %627
  %644 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  %645 = load ptr, ptr %644, align 8
  call void @kfree(ptr noundef %645) #8
  store ptr null, ptr %644, align 8
  br label %646

646:                                              ; preds = %643, %619, %608, %606, %2
  %647 = phi i32 [ 0, %619 ], [ %6, %2 ], [ %628, %643 ], [ %610, %608 ], [ %602, %606 ]
  call void @mutex_unlock(ptr noundef %5) #8
  ret i32 %647
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_tnc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_old_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_save_dirty_idx_lnums(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_calc_min_idx_lebs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_end_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %275, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 35
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %23, label %16

12:                                               ; preds = %16
  %13 = getelementptr i32, ptr %18, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %12, %9
  %17 = phi i32 [ %14, %12 ], [ %10, %9 ]
  %18 = phi ptr [ %13, %12 ], [ %7, %9 ]
  %19 = tail call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %17, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %12, label %275

21:                                               ; preds = %12
  %22 = load ptr, ptr %6, align 8
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi ptr [ %22, %21 ], [ %7, %9 ]
  tail call void @kfree(ptr noundef %24) #8
  store ptr null, ptr %6, align 8
  br label %25

25:                                               ; preds = %23, %5
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 34
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %253, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 40
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %35, -1
  %39 = add i32 %38, %37
  %40 = sub i32 0, %37
  %41 = and i32 %39, %40
  %42 = getelementptr inbounds %struct.ubifs_znode, ptr %27, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 12
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %46, %48
  %50 = mul i32 %49, %43
  %51 = add i32 %33, 28
  %52 = add i32 %51, %50
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %54 = load i32, ptr %53, align 8
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %29
  %57 = tail call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %31, i32 noundef -2147483647, i32 noundef 0, i32 noundef 0, i32 noundef 16) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %275

59:                                               ; preds = %56, %29
  %60 = phi i32 [ %31, %29 ], [ -1, %56 ]
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 36
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  br label %64

64:                                               ; preds = %236, %59
  %65 = phi ptr [ %27, %59 ], [ %164, %236 ]
  %66 = phi i32 [ %60, %59 ], [ %237, %236 ]
  %67 = phi i32 [ %33, %59 ], [ %238, %236 ]
  %68 = phi i32 [ 0, %59 ], [ %239, %236 ]
  %69 = phi i32 [ %41, %59 ], [ %240, %236 ]
  %70 = phi i32 [ 0, %59 ], [ %148, %236 ]
  %71 = tail call i32 @__cond_resched() #8
  %72 = load ptr, ptr %61, align 4
  %73 = getelementptr i8, ptr %72, i32 %68
  %74 = getelementptr inbounds %struct.ubifs_ch, ptr %73, i32 0, i32 4
  store i8 9, ptr %74, align 1
  %75 = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds %struct.ubifs_idx_node, ptr %73, i32 0, i32 1
  store i16 %77, ptr %78, align 1
  %79 = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 6
  %80 = load i32, ptr %79, align 8
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds %struct.ubifs_idx_node, ptr %73, i32 0, i32 2
  store i16 %81, ptr %82, align 1
  %83 = load i32, ptr %75, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %64
  %86 = getelementptr inbounds %struct.ubifs_idx_node, ptr %73, i32 0, i32 3
  br label %87

87:                                               ; preds = %119, %85
  %88 = phi i32 [ 0, %85 ], [ %120, %119 ]
  %89 = load i32, ptr %44, align 4
  %90 = add i32 %89, 12
  %91 = load i32, ptr %47, align 8
  %92 = add i32 %90, %91
  %93 = mul i32 %92, %88
  %94 = getelementptr i8, ptr %86, i32 %93
  %95 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %88
  %96 = getelementptr inbounds %struct.ubifs_branch, ptr %94, i32 0, i32 3
  %97 = load i32, ptr %95, align 8
  store i32 %97, ptr %96, align 8
  %98 = getelementptr [2 x i32], ptr %95, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr [2 x i32], ptr %96, i32 0, i32 1
  store i32 %99, ptr %100, align 4
  %101 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %88, i32 2
  %102 = load i32, ptr %101, align 4
  store i32 %102, ptr %94, align 1
  %103 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %88, i32 3
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %struct.ubifs_branch, ptr %94, i32 0, i32 1
  store i32 %104, ptr %105, align 1
  %106 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %88, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ubifs_branch, ptr %94, i32 0, i32 2
  store i32 %107, ptr %108, align 1
  %109 = load i32, ptr %101, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %87
  %112 = load i32, ptr %106, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111, %87
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.12) #8
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef %65) #8
  %115 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %88, i32 1
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %275, label %118

118:                                              ; preds = %114
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef nonnull %116) #8
  br label %275

119:                                              ; preds = %111
  %120 = add nuw nsw i32 %88, 1
  %121 = load i32, ptr %75, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %87, label %123

123:                                              ; preds = %119, %64
  %124 = phi i32 [ %83, %64 ], [ %121, %119 ]
  %125 = load i32, ptr %44, align 4
  %126 = add i32 %125, 12
  %127 = load i32, ptr %47, align 8
  %128 = add i32 %126, %127
  %129 = mul i32 %128, %124
  %130 = add i32 %129, 28
  tail call void @ubifs_prepare_node(ptr noundef %0, ptr noundef %73, i32 noundef %130, i32 noundef 0) #8
  tail call void @mutex_lock(ptr noundef %62) #8
  %131 = load ptr, ptr %65, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 4
  %135 = load volatile i32, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %123
  tail call void @mutex_unlock(ptr noundef %62) #8
  %137 = icmp eq i32 %66, -1
  br i1 %137, label %138, label %143

138:                                              ; preds = %136
  %139 = load ptr, ptr %63, align 8
  %140 = add i32 %70, 1
  %141 = getelementptr i32, ptr %139, i32 %70
  %142 = load i32, ptr %141, align 4
  br label %143

143:                                              ; preds = %138, %136
  %144 = phi i32 [ %142, %138 ], [ %66, %136 ]
  %145 = phi i32 [ 0, %138 ], [ %67, %136 ]
  %146 = phi i32 [ 0, %138 ], [ %68, %136 ]
  %147 = phi i32 [ %41, %138 ], [ %69, %136 ]
  %148 = phi i32 [ %140, %138 ], [ %70, %136 ]
  %149 = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 10
  %150 = load i32, ptr %149, align 8
  %151 = icmp eq i32 %144, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %143
  %153 = add i32 %146, %145
  %154 = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 11
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 12
  %159 = load i32, ptr %158, align 8
  %160 = icmp eq i32 %130, %159
  br i1 %160, label %162, label %161

161:                                              ; preds = %157, %152, %143
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.15) #8
  br label %275

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 4
  %166 = load volatile i32, ptr %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170, !prof !9

169:                                              ; preds = %162
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 925) #8
  br label %170

170:                                              ; preds = %169, %162
  %171 = load volatile i32, ptr %165, align 4
  %172 = and i32 %171, 2
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175, !prof !9

174:                                              ; preds = %170
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 926) #8
  br label %175

175:                                              ; preds = %174, %170
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %165) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %165) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %176 = add i32 %129, 35
  %177 = and i32 %176, -8
  %178 = add i32 %146, %177
  %179 = sub i32 %147, %177
  %180 = load ptr, ptr %2, align 8
  %181 = icmp eq ptr %164, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = add i32 %178, %145
  br label %201

184:                                              ; preds = %175
  %185 = getelementptr inbounds %struct.ubifs_znode, ptr %164, i32 0, i32 7
  %186 = load i32, ptr %185, align 4
  %187 = load i32, ptr %44, align 4
  %188 = add i32 %187, 12
  %189 = load i32, ptr %47, align 8
  %190 = add i32 %188, %189
  %191 = mul i32 %190, %186
  %192 = add i32 %191, 28
  %193 = add i32 %178, %145
  %194 = add i32 %193, %192
  %195 = icmp eq i32 %192, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %184
  %197 = load i32, ptr %53, align 8
  %198 = icmp sgt i32 %194, %197
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = icmp sgt i32 %179, 0
  br i1 %200, label %236, label %214

201:                                              ; preds = %196, %184, %182
  %202 = phi i1 [ true, %182 ], [ false, %196 ], [ true, %184 ]
  %203 = phi i32 [ %183, %182 ], [ %194, %196 ], [ %194, %184 ]
  %204 = add i32 %146, %176
  %205 = and i32 %204, -8
  %206 = load i32, ptr %36, align 8
  %207 = add i32 %205, -1
  %208 = add i32 %207, %206
  %209 = sub i32 0, %206
  %210 = and i32 %208, %209
  %211 = load ptr, ptr %61, align 4
  %212 = getelementptr i8, ptr %211, i32 %205
  %213 = sub i32 %210, %205
  tail call void @ubifs_pad(ptr noundef %0, ptr noundef %212, i32 noundef %213) #8
  br label %214

214:                                              ; preds = %201, %199
  %215 = phi i1 [ %202, %201 ], [ false, %199 ]
  %216 = phi i32 [ %203, %201 ], [ %194, %199 ]
  %217 = phi i32 [ %210, %201 ], [ %41, %199 ]
  %218 = load ptr, ptr %61, align 4
  %219 = tail call i32 @ubifs_leb_write(ptr noundef %0, i32 noundef %144, ptr noundef %218, i32 noundef %145, i32 noundef %217) #8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %275

221:                                              ; preds = %214
  %222 = add i32 %217, %145
  br i1 %215, label %241, label %223

223:                                              ; preds = %221
  %224 = load i32, ptr %53, align 8
  %225 = icmp sgt i32 %216, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = tail call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %144, i32 noundef -2147483647, i32 noundef 0, i32 noundef 0, i32 noundef 16) #8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %275

229:                                              ; preds = %226, %223
  %230 = phi i32 [ %144, %223 ], [ -1, %226 ]
  %231 = sub i32 %178, %217
  %232 = tail call i32 @llvm.smax.i32(i32 %231, i32 0) #8
  %233 = sub i32 %41, %232
  %234 = load ptr, ptr %61, align 4
  %235 = getelementptr i8, ptr %234, i32 %217
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %234, ptr align 1 %235, i32 %232, i1 false) #8
  br label %236

236:                                              ; preds = %229, %199
  %237 = phi i32 [ %230, %229 ], [ %144, %199 ]
  %238 = phi i32 [ %222, %229 ], [ %145, %199 ]
  %239 = phi i32 [ %232, %229 ], [ %178, %199 ]
  %240 = phi i32 [ %233, %229 ], [ %179, %199 ]
  br label %64

241:                                              ; preds = %221
  %242 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.ubifs_debug_info, ptr %243, i32 0, i32 13
  %245 = load i32, ptr %244, align 8
  %246 = icmp eq i32 %144, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.ubifs_debug_info, ptr %243, i32 0, i32 14
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %222, %249
  br i1 %250, label %252, label %251

251:                                              ; preds = %247, %241
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.16) #8
  br label %275

252:                                              ; preds = %247
  store i32 %144, ptr %30, align 8
  store i32 %222, ptr %32, align 4
  br label %253

253:                                              ; preds = %252, %25
  %254 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %254) #8
  %255 = load ptr, ptr %2, align 8
  %256 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 84
  br label %257

257:                                              ; preds = %269, %253
  %258 = phi ptr [ %255, %253 ], [ %260, %269 ]
  %259 = getelementptr inbounds %struct.ubifs_znode, ptr %258, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.ubifs_znode, ptr %258, i32 0, i32 4
  %262 = load volatile i32, ptr %261, align 4
  %263 = and i32 %262, 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %257
  tail call void @kfree(ptr noundef %258) #8
  br label %269

266:                                              ; preds = %257
  store ptr null, ptr %259, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %256) #8, !srcloc !11
  %267 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %256, ptr %256, i32 1, ptr elementtype(i32) %256) #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ubifs_clean_zn_cnt) #8, !srcloc !11
  %268 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #8, !srcloc !19
  br label %269

269:                                              ; preds = %266, %265
  %270 = load ptr, ptr %2, align 8
  %271 = icmp eq ptr %260, %270
  br i1 %271, label %272, label %257

272:                                              ; preds = %269
  store ptr null, ptr %2, align 8
  %273 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 41
  %274 = load ptr, ptr %273, align 8
  tail call void @kfree(ptr noundef %274) #8
  store ptr null, ptr %273, align 8
  tail call void @mutex_unlock(ptr noundef %254) #8
  br label %275

275:                                              ; preds = %272, %251, %226, %214, %161, %118, %114, %56, %16, %1
  %276 = phi i32 [ 0, %272 ], [ 0, %1 ], [ -22, %114 ], [ -22, %118 ], [ -22, %161 ], [ %57, %56 ], [ -22, %251 ], [ %219, %214 ], [ %227, %226 ], [ %19, %16 ]
  ret i32 %276
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_free_leb_for_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_dirty_idx_leb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fill_gap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = and i32 %2, 7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %5
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 111) #8
  br label %9

9:                                                ; preds = %8, %5
  %10 = and i32 %3, 7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %9
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 112) #8
  br label %13

13:                                               ; preds = %12, %9
  %14 = icmp slt i32 %3, %2
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %13
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 113) #8
  br label %16

16:                                               ; preds = %15, %13
  %17 = sub i32 %3, %2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %171, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 34
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %148, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 37
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 2
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 3
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 4
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 88
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 33
  br label %33

33:                                               ; preds = %138, %23
  %34 = phi ptr [ %21, %23 ], [ %142, %138 ]
  %35 = phi i32 [ 0, %23 ], [ %146, %138 ]
  %36 = phi i32 [ %2, %23 ], [ %140, %138 ]
  %37 = phi i32 [ %17, %23 ], [ %139, %138 ]
  %38 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %24, align 4
  %41 = add i32 %40, 12
  %42 = load i32, ptr %25, align 8
  %43 = add i32 %41, %42
  %44 = mul i32 %43, %39
  %45 = add i32 %44, 28
  %46 = icmp slt i32 %45, %37
  br i1 %46, label %47, label %148

47:                                               ; preds = %33
  %48 = add i32 %44, 35
  %49 = and i32 %48, -8
  %50 = icmp slt i32 %37, %49
  br i1 %50, label %51, label %52, !prof !9

51:                                               ; preds = %47
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 127) #8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load ptr, ptr %26, align 8
  %54 = getelementptr i8, ptr %53, i32 %36
  %55 = getelementptr inbounds %struct.ubifs_ch, ptr %54, i32 0, i32 4
  store i8 9, ptr %55, align 1
  %56 = load i32, ptr %38, align 4
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds %struct.ubifs_idx_node, ptr %54, i32 0, i32 1
  store i16 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 6
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  %62 = getelementptr inbounds %struct.ubifs_idx_node, ptr %54, i32 0, i32 2
  store i16 %61, ptr %62, align 1
  %63 = load i32, ptr %38, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %103

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.ubifs_idx_node, ptr %54, i32 0, i32 3
  br label %67

67:                                               ; preds = %99, %65
  %68 = phi i32 [ 0, %65 ], [ %100, %99 ]
  %69 = load i32, ptr %24, align 4
  %70 = add i32 %69, 12
  %71 = load i32, ptr %25, align 8
  %72 = add i32 %70, %71
  %73 = mul i32 %72, %68
  %74 = getelementptr i8, ptr %66, i32 %73
  %75 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %68
  %76 = getelementptr inbounds %struct.ubifs_branch, ptr %74, i32 0, i32 3
  %77 = load i32, ptr %75, align 8
  store i32 %77, ptr %76, align 8
  %78 = getelementptr [2 x i32], ptr %75, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr [2 x i32], ptr %76, i32 0, i32 1
  store i32 %79, ptr %80, align 4
  %81 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %68, i32 2
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %74, align 1
  %83 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %68, i32 3
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.ubifs_branch, ptr %74, i32 0, i32 1
  store i32 %84, ptr %85, align 1
  %86 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %68, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ubifs_branch, ptr %74, i32 0, i32 2
  store i32 %87, ptr %88, align 1
  %89 = load i32, ptr %81, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %67
  %92 = load i32, ptr %86, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91, %67
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.12) #8
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef nonnull %34) #8
  %95 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %68, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %171, label %98

98:                                               ; preds = %94
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef nonnull %96) #8
  br label %171

99:                                               ; preds = %91
  %100 = add nuw nsw i32 %68, 1
  %101 = load i32, ptr %38, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %67, label %103

103:                                              ; preds = %99, %52
  tail call void @ubifs_prepare_node(ptr noundef %0, ptr noundef %54, i32 noundef %45, i32 noundef 0) #8
  %104 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 10
  store i32 %1, ptr %104, align 8
  %105 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 11
  store i32 %36, ptr %105, align 4
  %106 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 12
  store i32 %45, ptr %106, align 8
  %107 = tail call i32 @insert_old_idx_znode(ptr noundef %0, ptr noundef nonnull %34) #8
  %108 = load ptr, ptr %34, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 8
  %112 = load i32, ptr %111, align 8
  %113 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %112, i32 2
  store i32 %1, ptr %113, align 4
  %114 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %112, i32 3
  store i32 %36, ptr %114, align 8
  %115 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %112, i32 4
  br label %117

116:                                              ; preds = %103
  store i32 %1, ptr %27, align 4
  store i32 %36, ptr %28, align 8
  br label %117

117:                                              ; preds = %116, %110
  %118 = phi ptr [ %29, %116 ], [ %115, %110 ]
  store i32 %45, ptr %118, align 4
  %119 = sext i32 %49 to i64
  %120 = load i64, ptr %30, align 8
  %121 = add i64 %120, %119
  store i64 %121, ptr %30, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #8, !srcloc !11
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #8, !srcloc !12
  %123 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 4
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128, !prof !9

127:                                              ; preds = %117
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 83) #8
  br label %128

128:                                              ; preds = %127, %117
  %129 = load volatile i32, ptr %123, align 4
  %130 = and i32 %129, 2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134, !prof !9

132:                                              ; preds = %128
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 84) #8
  %133 = load i32, ptr %123, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi i32 [ %133, %132 ], [ %129, %128 ]
  %136 = and i32 %135, -4
  store i32 %136, ptr %123, align 4
  %137 = icmp eq i32 %107, 0
  br i1 %137, label %138, label %171

138:                                              ; preds = %134
  %139 = sub i32 %37, %49
  %140 = add i32 %49, %36
  %141 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = load ptr, ptr %32, align 8
  %144 = icmp eq ptr %142, %143
  %145 = select i1 %144, ptr null, ptr %142
  store ptr %145, ptr %20, align 4
  %146 = add i32 %35, 1
  %147 = icmp eq ptr %145, null
  br i1 %147, label %148, label %33

148:                                              ; preds = %138, %33, %19
  %149 = phi i32 [ %17, %19 ], [ %37, %33 ], [ %139, %138 ]
  %150 = phi i32 [ %2, %19 ], [ %36, %33 ], [ %140, %138 ]
  %151 = phi i32 [ 0, %19 ], [ %35, %33 ], [ %146, %138 ]
  %152 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %153 = load i32, ptr %152, align 8
  %154 = icmp eq i32 %153, %3
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %157 = load i32, ptr %156, align 8
  %158 = add i32 %150, -1
  %159 = add i32 %158, %157
  %160 = sub i32 0, %157
  %161 = and i32 %159, %160
  %162 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 38
  store i32 %161, ptr %162, align 4
  %163 = sub i32 %161, %150
  br label %164

164:                                              ; preds = %155, %148
  %165 = phi i32 [ %163, %155 ], [ %149, %148 ]
  %166 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 37
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr i8, ptr %167, i32 %150
  tail call void @ubifs_pad(ptr noundef %0, ptr noundef %168, i32 noundef %165) #8
  %169 = load i32, ptr %4, align 4
  %170 = add i32 %169, %165
  store i32 %170, ptr %4, align 4
  br label %171

171:                                              ; preds = %164, %134, %98, %94, %16
  %172 = phi i32 [ %151, %164 ], [ 0, %16 ], [ -22, %98 ], [ -22, %94 ], [ %107, %134 ]
  ret i32 %172
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_one_lp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_idx_node_in_tnc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_znode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_old_idx_znode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(1) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{i64 532761, i64 2148022732, i64 2148022758, i64 2148022805, i64 2148022827, i64 2148022855, i64 2148022875}
!12 = !{i64 2148036504, i64 2148036530, i64 2148036559, i64 2148036593, i64 2148036624, i64 2148036647}
!13 = !{i64 2149166196}
!14 = !{i64 2149162020}
!15 = !{i64 2149162095, i64 2149162122, i64 2149162169, i64 2149162191, i64 2149162219, i64 2149162239}
!16 = !{i64 2149189199}
!17 = !{i64 2153476177}
!18 = !{i64 2153476440}
!19 = !{i64 2148034147, i64 2148034173, i64 2148034202, i64 2148034236, i64 2148034267, i64 2148034290}
