; ModuleID = '/llk/IR/fs/ubifs/find.c_pt.bc'
source_filename = "../fs/ubifs/find.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scan_data = type { i32, i32, i32, i32 }
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
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }

@.str = private unnamed_addr constant [35 x i8] c"lp->free + lp->dirty >= c->dead_wm\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fs/ubifs/find.c\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"lp->dirty >= c->dead_wm || (pick_free && lp->free + lp->dirty == c->leb_size)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"*offs <= c->leb_size - min_space\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"c->freeable_cnt == 0\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"data.lnum >= c->main_first && data.lnum < c->leb_cnt\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"lprops->lnum == data.lnum\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"lprops->free + lprops->dirty >= min_space\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"lprops->dirty >= c->dead_wm || (pick_free && lprops->free + lprops->dirty == c->leb_size)\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"!(lprops->flags & LPROPS_TAKEN)\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"!exclude_index || !(lprops->flags & LPROPS_INDEX)\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"fs/ubifs/misc.h\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"lprops->free >= min_space\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"!(lprops->flags & LPROPS_INDEX)\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"lprops->free + lprops->dirty == c->leb_size\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"lp->flags & LPROPS_TAKEN\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"lp->flags & LPROPS_INDEX\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"lprops->free + lprops->dirty >= c->min_idx_node_sz\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"(lprops->flags & LPROPS_INDEX)\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_find_dirty_leb(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.scan_data, align 4
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 2
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %14, %12
  %20 = add i32 %19, %16
  %21 = sub i32 %20, %18
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp slt i32 %23, %25
  %27 = sub i32 %23, %25
  %28 = xor i1 %26, true
  %29 = or i1 %9, %28
  %30 = select i1 %26, i32 0, i32 %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %31 = load i16, ptr %10, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %33 = icmp slt i32 %30, %21
  br i1 %33, label %34, label %49

34:                                               ; preds = %8
  %35 = tail call ptr @ubifs_fast_find_empty(ptr noundef %0) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %266

37:                                               ; preds = %34
  %38 = tail call ptr @ubifs_fast_find_freeable(ptr noundef %0) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %266

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %41) #7
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = icmp sge i32 %43, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %47 = load i16, ptr %41, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %49

49:                                               ; preds = %40, %37, %8
  %50 = phi i1 [ %46, %40 ], [ %29, %37 ], [ %29, %8 ]
  %51 = phi i32 [ 0, %40 ], [ %3, %37 ], [ 0, %8 ]
  %52 = zext i1 %50 to i32
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 158
  %54 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i1 true, i1 %50
  br i1 %57, label %72, label %58

58:                                               ; preds = %49
  %59 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ubifs_lprops, ptr %61, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  %66 = icmp slt i32 %65, %2
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 77
  %69 = load i32, ptr %68, align 8
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %58
  br label %72

72:                                               ; preds = %71, %67, %49
  %73 = phi ptr [ null, %49 ], [ null, %71 ], [ %61, %67 ]
  %74 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %101, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %53, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ubifs_lprops, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %79, align 4
  %83 = add i32 %82, %81
  %84 = icmp slt i32 %83, %2
  %85 = select i1 %84, ptr null, ptr %79
  %86 = icmp ne ptr %73, null
  %87 = icmp ne ptr %85, null
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %101

89:                                               ; preds = %77
  %90 = load i32, ptr %73, align 4
  %91 = getelementptr inbounds %struct.ubifs_lprops, ptr %73, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, %90
  %94 = load i32, ptr %85, align 4
  %95 = getelementptr inbounds %struct.ubifs_lprops, ptr %85, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %94
  %98 = icmp slt i32 %93, %97
  %99 = select i1 %98, i32 %94, i32 %90
  %100 = select i1 %98, ptr %85, ptr %73
  br label %110

101:                                              ; preds = %77, %72
  %102 = phi i1 [ %87, %77 ], [ false, %72 ]
  %103 = phi ptr [ %85, %77 ], [ null, %72 ]
  %104 = icmp eq ptr %73, null
  %105 = select i1 %104, i1 true, i1 %102
  %106 = select i1 %105, ptr %103, ptr %73
  %107 = icmp eq ptr %106, null
  br i1 %107, label %120, label %108

108:                                              ; preds = %101
  %109 = load i32, ptr %106, align 4
  br label %110

110:                                              ; preds = %108, %89
  %111 = phi i32 [ %99, %89 ], [ %109, %108 ]
  %112 = phi ptr [ %100, %89 ], [ %106, %108 ]
  %113 = getelementptr inbounds %struct.ubifs_lprops, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %111
  %116 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %117 = load i32, ptr %116, align 8
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %266, !prof !12

119:                                              ; preds = %110
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 306) #7
  br label %266

120:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %121 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %120
  %125 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  br label %128

128:                                              ; preds = %140, %124
  %129 = phi i32 [ 0, %124 ], [ %141, %140 ]
  %130 = getelementptr ptr, ptr %126, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.ubifs_lprops, ptr %131, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %132
  %136 = icmp slt i32 %135, %2
  br i1 %136, label %140, label %137

137:                                              ; preds = %128
  %138 = load i32, ptr %127, align 8
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %245

140:                                              ; preds = %137, %128
  %141 = add nuw nsw i32 %129, 1
  %142 = icmp eq i32 %141, %122
  br i1 %142, label %143, label %128

143:                                              ; preds = %140, %120
  %144 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 160
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, %144
  br i1 %146, label %173, label %147

147:                                              ; preds = %143
  %148 = xor i1 %50, true
  %149 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  br label %150

150:                                              ; preds = %170, %147
  %151 = phi ptr [ %145, %147 ], [ %171, %170 ]
  %152 = getelementptr i8, ptr %151, i32 -16
  %153 = getelementptr i8, ptr %151, i32 -8
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 16
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %150
  %158 = load i32, ptr %152, align 4
  %159 = getelementptr i8, ptr %151, i32 -12
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, %158
  %162 = icmp slt i32 %161, %2
  br i1 %162, label %170, label %163

163:                                              ; preds = %157
  %164 = and i32 %154, 32
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %148, i1 true, i1 %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, ptr %149, align 8
  %169 = icmp slt i32 %160, %168
  br i1 %169, label %170, label %245

170:                                              ; preds = %167, %163, %157, %150
  %171 = load ptr, ptr %151, align 4
  %172 = icmp eq ptr %171, %144
  br i1 %172, label %173, label %150

173:                                              ; preds = %170, %143
  %174 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 143
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  %177 = load i32, ptr %176, align 8
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %248

180:                                              ; preds = %173
  store i32 %2, ptr %5, align 4
  %181 = getelementptr inbounds %struct.scan_data, ptr %5, i32 0, i32 1
  store i32 %51, ptr %181, align 4
  %182 = getelementptr inbounds %struct.scan_data, ptr %5, i32 0, i32 2
  store i32 -1, ptr %182, align 4
  %183 = getelementptr inbounds %struct.scan_data, ptr %5, i32 0, i32 3
  store i32 %52, ptr %183, align 4
  %184 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 174
  %185 = load i32, ptr %184, align 8
  %186 = call i32 @ubifs_lpt_scan_nolock(ptr noundef %0, i32 noundef -1, i32 noundef %185, ptr noundef nonnull @scan_for_dirty_cb, ptr noundef nonnull %5) #7
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %180
  %189 = inttoptr i32 %186 to ptr
  br label %245

190:                                              ; preds = %180
  %191 = load i32, ptr %182, align 4
  %192 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %193 = load i32, ptr %192, align 8
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %199, label %195, !prof !12

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %197 = load i32, ptr %196, align 8
  %198 = icmp slt i32 %191, %197
  br i1 %198, label %201, label %199, !prof !13

199:                                              ; preds = %195, %190
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 174) #7
  %200 = load i32, ptr %182, align 4
  br label %201

201:                                              ; preds = %199, %195
  %202 = phi i32 [ %200, %199 ], [ %191, %195 ]
  store i32 %202, ptr %184, align 8
  %203 = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %202) #7
  %204 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %204, label %245, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.ubifs_lprops, ptr %203, i32 0, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = load i32, ptr %182, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %211, label %210, !prof !13

210:                                              ; preds = %205
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 179) #7
  br label %211

211:                                              ; preds = %210, %205
  %212 = load i32, ptr %203, align 4
  %213 = getelementptr inbounds %struct.ubifs_lprops, ptr %203, i32 0, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, %212
  %216 = icmp slt i32 %215, %2
  br i1 %216, label %217, label %219, !prof !12

217:                                              ; preds = %211
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 180) #7
  %218 = load i32, ptr %213, align 4
  br label %219

219:                                              ; preds = %217, %211
  %220 = phi i32 [ %214, %211 ], [ %218, %217 ]
  %221 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %222 = load i32, ptr %221, align 8
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = icmp eq i32 %51, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %224
  %227 = load i32, ptr %203, align 4
  %228 = add i32 %227, %220
  %229 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %230 = load i32, ptr %229, align 8
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %233, label %232, !prof !13

232:                                              ; preds = %226, %224
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 183) #7
  br label %233

233:                                              ; preds = %232, %226, %219
  %234 = getelementptr inbounds %struct.ubifs_lprops, ptr %203, i32 0, i32 2
  %235 = load i32, ptr %234, align 4
  %236 = and i32 %235, 16
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %239, label %238, !prof !13

238:                                              ; preds = %233
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 184) #7
  br label %239

239:                                              ; preds = %238, %233
  br i1 %50, label %240, label %245

240:                                              ; preds = %239
  %241 = load i32, ptr %234, align 4
  %242 = and i32 %241, 32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244, !prof !13

244:                                              ; preds = %240
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 185) #7
  br label %245

245:                                              ; preds = %244, %240, %239, %201, %188, %167, %137
  %246 = phi ptr [ %189, %188 ], [ %203, %201 ], [ %203, %239 ], [ %203, %244 ], [ %203, %240 ], [ %152, %167 ], [ %131, %137 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  %247 = icmp ugt ptr %246, inttoptr (i32 -4096 to ptr)
  br i1 %247, label %248, label %251

248:                                              ; preds = %245, %179
  %249 = phi ptr [ inttoptr (i32 -28 to ptr), %179 ], [ %246, %245 ]
  %250 = ptrtoint ptr %249 to i32
  br label %276

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.ubifs_lprops, ptr %246, i32 0, i32 1
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %255 = load i32, ptr %254, align 8
  %256 = icmp slt i32 %253, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %251
  %258 = icmp eq i32 %51, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %257
  %260 = load i32, ptr %246, align 4
  %261 = add i32 %260, %253
  %262 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %263 = load i32, ptr %262, align 8
  %264 = icmp eq i32 %261, %263
  br i1 %264, label %266, label %265, !prof !13

265:                                              ; preds = %259, %257
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 318) #7
  br label %266

266:                                              ; preds = %265, %259, %251, %119, %110, %37, %34
  %267 = phi ptr [ %112, %119 ], [ %112, %110 ], [ %246, %265 ], [ %246, %259 ], [ %246, %251 ], [ %38, %37 ], [ %35, %34 ]
  %268 = getelementptr inbounds %struct.ubifs_lprops, ptr %267, i32 0, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = or i32 %269, 16
  %271 = call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %267, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %270, i32 noundef 0) #7
  %272 = icmp ugt ptr %271, inttoptr (i32 -4096 to ptr)
  br i1 %272, label %273, label %275

273:                                              ; preds = %266
  %274 = ptrtoint ptr %271 to i32
  br label %276

275:                                              ; preds = %266
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %1, ptr noundef align 4 dereferenceable(24) %271, i32 24, i1 false)
  br label %276

276:                                              ; preds = %275, %273, %248
  %277 = phi i32 [ %274, %273 ], [ 0, %275 ], [ %250, %248 ]
  %278 = call zeroext i1 @mutex_is_locked(ptr noundef %6) #7
  br i1 %278, label %280, label %279, !prof !13

279:                                              ; preds = %276
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 256) #7
  br label %280

280:                                              ; preds = %279, %276
  %281 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %282 = load i32, ptr %281, align 8
  %283 = icmp sgt i32 %282, -1
  br i1 %283, label %284, label %288, !prof !13

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %286 = load i32, ptr %285, align 4
  %287 = icmp sgt i32 %282, %286
  br i1 %287, label %288, label %289, !prof !12

288:                                              ; preds = %284, %280
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 258) #7
  br label %289

289:                                              ; preds = %288, %284
  call void @mutex_unlock(ptr noundef %6) #7
  ret i32 %277
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_freeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_change_lp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_find_free_space(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.scan_data, align 4
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %9, %12
  %14 = sub i32 %9, %12
  %15 = select i1 %13, i32 %14, i32 0
  %16 = load i32, ptr %10, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %16
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, %21
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = icmp slt i32 %15, %25
  %27 = sub i32 %16, %24
  %28 = icmp sgt i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = add i32 %24, 1
  store i32 %31, ptr %23, align 4
  br label %32

32:                                               ; preds = %30, %4
  %33 = phi i32 [ 1, %30 ], [ 0, %4 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %34 = load i16, ptr %7, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %36 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %36, align 4, !annotation !14
  %37 = icmp eq i32 %3, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @ubifs_fast_find_free(ptr noundef %0) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %39, align 4
  %43 = icmp slt i32 %42, %1
  br i1 %43, label %44, label %143

44:                                               ; preds = %41, %38, %32
  br i1 %29, label %45, label %48

45:                                               ; preds = %44
  %46 = tail call ptr @ubifs_fast_find_empty(ptr noundef %0) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %143

48:                                               ; preds = %45, %44
  br i1 %37, label %49, label %55

49:                                               ; preds = %48
  %50 = tail call ptr @ubifs_fast_find_free(ptr noundef %0) #7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %50, align 4
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %55, label %143

55:                                               ; preds = %52, %49, %48
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 158
  %61 = load ptr, ptr %60, align 4
  br label %65

62:                                               ; preds = %65
  %63 = add nuw nsw i32 %66, 1
  %64 = icmp eq i32 %63, %57
  br i1 %64, label %71, label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ 0, %59 ], [ %63, %62 ]
  %67 = getelementptr ptr, ptr %61, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp slt i32 %69, %1
  br i1 %70, label %62, label %143

71:                                               ; preds = %62, %55
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 160
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %88, label %75

75:                                               ; preds = %85, %71
  %76 = phi ptr [ %86, %85 ], [ %73, %71 ]
  %77 = getelementptr i8, ptr %76, i32 -8
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 48
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = getelementptr i8, ptr %76, i32 -16
  %83 = load i32, ptr %82, align 4
  %84 = icmp slt i32 %83, %1
  br i1 %84, label %85, label %141

85:                                               ; preds = %81, %75
  %86 = load ptr, ptr %76, align 4
  %87 = icmp eq ptr %86, %72
  br i1 %87, label %88, label %75

88:                                               ; preds = %85, %71
  %89 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 143
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  %92 = load i32, ptr %91, align 8
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %189

95:                                               ; preds = %88
  store i32 %1, ptr %5, align 4
  %96 = getelementptr inbounds %struct.scan_data, ptr %5, i32 0, i32 1
  store i32 %33, ptr %96, align 4
  %97 = getelementptr inbounds %struct.scan_data, ptr %5, i32 0, i32 2
  store i32 -1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 174
  %99 = load i32, ptr %98, align 8
  %100 = call i32 @ubifs_lpt_scan_nolock(ptr noundef %0, i32 noundef -1, i32 noundef %99, ptr noundef nonnull @scan_for_free_cb, ptr noundef nonnull %5) #7
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = inttoptr i32 %100 to ptr
  br label %143

104:                                              ; preds = %95
  %105 = load i32, ptr %97, align 4
  %106 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %107 = load i32, ptr %106, align 8
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %113, label %109, !prof !12

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %111 = load i32, ptr %110, align 8
  %112 = icmp slt i32 %105, %111
  br i1 %112, label %115, label %113, !prof !13

113:                                              ; preds = %109, %104
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 453) #7
  %114 = load i32, ptr %97, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i32 [ %114, %113 ], [ %105, %109 ]
  store i32 %116, ptr %98, align 8
  %117 = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %116) #7
  %118 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %143, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ubifs_lprops, ptr %117, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %97, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %125, label %124, !prof !13

124:                                              ; preds = %119
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 458) #7
  br label %125

125:                                              ; preds = %124, %119
  %126 = load i32, ptr %117, align 4
  %127 = icmp slt i32 %126, %1
  br i1 %127, label %128, label %129, !prof !12

128:                                              ; preds = %125
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 459) #7
  br label %129

129:                                              ; preds = %128, %125
  %130 = getelementptr inbounds %struct.ubifs_lprops, ptr %117, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, 16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134, !prof !13

134:                                              ; preds = %129
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 460) #7
  %135 = load i32, ptr %130, align 4
  br label %136

136:                                              ; preds = %134, %129
  %137 = phi i32 [ %131, %129 ], [ %135, %134 ]
  %138 = and i32 %137, 32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140, !prof !13

140:                                              ; preds = %136
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 461) #7
  br label %143

141:                                              ; preds = %81
  %142 = getelementptr i8, ptr %76, i32 -16
  br label %143

143:                                              ; preds = %141, %140, %136, %115, %102, %65, %52, %45, %41
  %144 = phi ptr [ %103, %102 ], [ %39, %41 ], [ %46, %45 ], [ %50, %52 ], [ %117, %115 ], [ %117, %140 ], [ %117, %136 ], [ %142, %141 ], [ %68, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  %145 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %145, label %189, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.ubifs_lprops, ptr %144, i32 0, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.ubifs_lprops, ptr %144, i32 0, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = or i32 %150, 16
  %152 = call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %144, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %151, i32 noundef 0) #7
  %153 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %189, label %154

154:                                              ; preds = %146
  br i1 %29, label %155, label %160

155:                                              ; preds = %154
  call void @_raw_spin_lock(ptr noundef %7) #7
  %156 = load i32, ptr %23, align 4
  %157 = add i32 %156, -1
  store i32 %157, ptr %23, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %158 = load i16, ptr %7, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %160

160:                                              ; preds = %155, %154
  %161 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %162 = load i32, ptr %161, align 8
  %163 = load i32, ptr %152, align 4
  %164 = sub i32 %162, %163
  store i32 %164, ptr %2, align 4
  %165 = call zeroext i1 @mutex_is_locked(ptr noundef %6) #7
  br i1 %165, label %167, label %166, !prof !13

166:                                              ; preds = %160
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 256) #7
  br label %167

167:                                              ; preds = %166, %160
  %168 = load i32, ptr %10, align 8
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %170, label %174, !prof !13

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %172 = load i32, ptr %171, align 4
  %173 = icmp sgt i32 %168, %172
  br i1 %173, label %174, label %175, !prof !12

174:                                              ; preds = %170, %167
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 258) #7
  br label %175

175:                                              ; preds = %174, %170
  call void @mutex_unlock(ptr noundef %6) #7
  %176 = load i32, ptr %2, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %148) #7
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %209

181:                                              ; preds = %178
  %182 = load i32, ptr %2, align 4
  br label %183

183:                                              ; preds = %181, %175
  %184 = phi i32 [ %182, %181 ], [ %176, %175 ]
  %185 = load i32, ptr %161, align 8
  %186 = sub i32 %185, %1
  %187 = icmp sgt i32 %184, %186
  br i1 %187, label %188, label %209, !prof !12

188:                                              ; preds = %183
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 565) #7
  br label %209

189:                                              ; preds = %146, %143, %94
  %190 = phi ptr [ inttoptr (i32 -28 to ptr), %94 ], [ %144, %143 ], [ %152, %146 ]
  %191 = ptrtoint ptr %190 to i32
  br i1 %29, label %192, label %197

192:                                              ; preds = %189
  call void @_raw_spin_lock(ptr noundef %7) #7
  %193 = load i32, ptr %23, align 4
  %194 = add i32 %193, -1
  store i32 %194, ptr %23, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %195 = load i16, ptr %7, align 4
  %196 = add i16 %195, 1
  store i16 %196, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %197

197:                                              ; preds = %192, %189
  %198 = call zeroext i1 @mutex_is_locked(ptr noundef %6) #7
  br i1 %198, label %200, label %199, !prof !13

199:                                              ; preds = %197
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 256) #7
  br label %200

200:                                              ; preds = %199, %197
  %201 = load i32, ptr %10, align 8
  %202 = icmp sgt i32 %201, -1
  br i1 %202, label %203, label %207, !prof !13

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %205 = load i32, ptr %204, align 4
  %206 = icmp sgt i32 %201, %205
  br i1 %206, label %207, label %208, !prof !12

207:                                              ; preds = %203, %200
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 258) #7
  br label %208

208:                                              ; preds = %207, %203
  call void @mutex_unlock(ptr noundef %6) #7
  br label %209

209:                                              ; preds = %208, %188, %183, %178
  %210 = phi i32 [ %191, %208 ], [ %179, %178 ], [ %148, %188 ], [ %148, %183 ]
  ret i32 %210
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_find_free_leb_for_idx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.scan_data, align 4
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = tail call ptr @ubifs_fast_find_empty(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %84

6:                                                ; preds = %1
  %7 = tail call ptr @ubifs_fast_find_freeable(ptr noundef %0) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %84

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 165
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %15, %9
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !13

26:                                               ; preds = %22
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 681) #7
  br label %27

27:                                               ; preds = %26, %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #7, !annotation !14
  %28 = getelementptr inbounds %struct.scan_data, ptr %2, i32 0, i32 2
  store i32 -1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 174
  %30 = load i32, ptr %29, align 8
  %31 = call i32 @ubifs_lpt_scan_nolock(ptr noundef %0, i32 noundef -1, i32 noundef %30, ptr noundef nonnull @scan_for_idx_cb, ptr noundef nonnull %2) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = inttoptr i32 %31 to ptr
  br label %77

35:                                               ; preds = %27
  %36 = load i32, ptr %28, align 4
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %38 = load i32, ptr %37, align 8
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %44, label %40, !prof !12

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %42 = load i32, ptr %41, align 8
  %43 = icmp slt i32 %36, %42
  br i1 %43, label %46, label %44, !prof !13

44:                                               ; preds = %40, %35
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 633) #7
  %45 = load i32, ptr %28, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %45, %44 ], [ %36, %40 ]
  store i32 %47, ptr %29, align 8
  %48 = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %47) #7
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %77, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ubifs_lprops, ptr %48, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %28, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %56, label %55, !prof !13

55:                                               ; preds = %50
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 638) #7
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, ptr %48, align 4
  %58 = getelementptr inbounds %struct.ubifs_lprops, ptr %48, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %65, label %64, !prof !13

64:                                               ; preds = %56
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 639) #7
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds %struct.ubifs_lprops, ptr %48, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70, !prof !13

70:                                               ; preds = %65
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 640) #7
  %71 = load i32, ptr %66, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = phi i32 [ %67, %65 ], [ %71, %70 ]
  %74 = and i32 %73, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76, !prof !13

76:                                               ; preds = %72
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 641) #7
  br label %77

77:                                               ; preds = %76, %72, %46, %33
  %78 = phi ptr [ %34, %33 ], [ %48, %46 ], [ %48, %76 ], [ %48, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = ptrtoint ptr %78 to i32
  br label %114

82:                                               ; preds = %77
  %83 = icmp eq ptr %78, null
  br i1 %83, label %114, label %84

84:                                               ; preds = %82, %6, %1
  %85 = phi ptr [ %78, %82 ], [ %7, %6 ], [ %4, %1 ]
  %86 = getelementptr inbounds %struct.ubifs_lprops, ptr %85, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ubifs_lprops, ptr %85, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 48
  %91 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %92 = load i32, ptr %91, align 8
  %93 = call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef nonnull %85, i32 noundef %92, i32 noundef 0, i32 noundef %90, i32 noundef 0) #7
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = ptrtoint ptr %93 to i32
  br label %114

97:                                               ; preds = %84
  %98 = call zeroext i1 @mutex_is_locked(ptr noundef %3) #7
  br i1 %98, label %100, label %99, !prof !13

99:                                               ; preds = %97
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 256) #7
  br label %100

100:                                              ; preds = %99, %97
  %101 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %102 = load i32, ptr %101, align 8
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %104, label %108, !prof !13

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %106 = load i32, ptr %105, align 4
  %107 = icmp sgt i32 %102, %106
  br i1 %107, label %108, label %109, !prof !12

108:                                              ; preds = %104, %100
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 258) #7
  br label %109

109:                                              ; preds = %108, %104
  call void @mutex_unlock(ptr noundef %3) #7
  %110 = call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %87) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %109
  %113 = call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %87, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 48, i32 noundef 0) #7
  br label %128

114:                                              ; preds = %95, %82, %80, %15
  %115 = phi i32 [ %96, %95 ], [ %81, %80 ], [ -28, %82 ], [ -28, %15 ]
  %116 = call zeroext i1 @mutex_is_locked(ptr noundef %3) #7
  br i1 %116, label %118, label %117, !prof !13

117:                                              ; preds = %114
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 256) #7
  br label %118

118:                                              ; preds = %117, %114
  %119 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %120 = load i32, ptr %119, align 8
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %122, label %126, !prof !13

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %124 = load i32, ptr %123, align 4
  %125 = icmp sgt i32 %120, %124
  br i1 %125, label %126, label %127, !prof !12

126:                                              ; preds = %122, %118
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 258) #7
  br label %127

127:                                              ; preds = %126, %122
  call void @mutex_unlock(ptr noundef %3) #7
  br label %128

128:                                              ; preds = %127, %112, %109
  %129 = phi i32 [ %115, %127 ], [ %110, %112 ], [ %87, %109 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_save_dirty_idx_lnums(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %2) #7
  %3 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1
  %4 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 159
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 159, i32 1
  store i32 %5, ptr %7, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = shl i32 %5, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %9, i32 %10, i1 false)
  %11 = load ptr, ptr %6, align 4
  %12 = load i32, ptr %7, align 4
  tail call void @sort(ptr noundef %11, i32 noundef %12, i32 noundef 4, ptr noundef nonnull @cmp_dirty_idx, ptr noundef null) #7
  %13 = load i32, ptr %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %15, %1
  %16 = phi i32 [ %23, %15 ], [ 0, %1 ]
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr ptr, ptr %17, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ubifs_lprops, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = inttoptr i32 %21 to ptr
  store ptr %22, ptr %18, align 4
  %23 = add nuw nsw i32 %16, 1
  %24 = load i32, ptr %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %15, label %26

26:                                               ; preds = %15, %1
  %27 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #7
  br i1 %27, label %29, label %28, !prof !13

28:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 256) #7
  br label %29

29:                                               ; preds = %28, %26
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %31 = load i32, ptr %30, align 8
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %37, !prof !13

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %38, !prof !12

37:                                               ; preds = %33, %29
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 258) #7
  br label %38

38:                                               ; preds = %37, %33
  tail call void @mutex_unlock(ptr noundef %2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cmp_dirty_idx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.ubifs_lprops, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = getelementptr inbounds %struct.ubifs_lprops, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %7, %6
  %12 = add i32 %9, %10
  %13 = sub i32 %11, %12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_find_dirty_idx_leb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.scan_data, align 4
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 159, i32 1
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 159
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 4
  %11 = add i32 %7, -1
  store i32 %11, ptr %4, align 4
  %12 = getelementptr ptr, ptr %10, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call ptr @ubifs_lpt_lookup(ptr noundef %0, i32 noundef %14) #7
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %38, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ubifs_lprops, ptr %15, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 48
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %6

22:                                               ; preds = %17
  %23 = or i32 %19, 16
  %24 = tail call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %15, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %23, i32 noundef 0) #7
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ubifs_lprops, ptr %24, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33, !prof !12

31:                                               ; preds = %26
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 928) #7
  %32 = load i32, ptr %27, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %28, %26 ], [ %32, %31 ]
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38, !prof !12

37:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 929) #7
  br label %38

38:                                               ; preds = %37, %33, %22, %9
  %39 = phi ptr [ %13, %37 ], [ %13, %33 ], [ %24, %22 ], [ %15, %9 ]
  %40 = ptrtoint ptr %39 to i32
  %41 = icmp eq ptr %39, inttoptr (i32 -28 to ptr)
  br i1 %41, label %42, label %213

42:                                               ; preds = %38, %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #7, !annotation !14
  %43 = getelementptr inbounds %struct.scan_data, ptr %2, i32 0, i32 2
  store i32 -1, ptr %43, align 4
  %44 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  br label %51

51:                                               ; preds = %69, %47
  %52 = phi i32 [ 0, %47 ], [ %70, %69 ]
  %53 = getelementptr ptr, ptr %49, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ubifs_lprops, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 48
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load i32, ptr %54, align 4
  %61 = getelementptr inbounds %struct.ubifs_lprops, ptr %54, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  %64 = load i32, ptr %50, align 8
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.ubifs_lprops, ptr %54, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %43, align 4
  br label %138

69:                                               ; preds = %59, %51
  %70 = add nuw nsw i32 %52, 1
  %71 = icmp eq i32 %70, %45
  br i1 %71, label %72, label %51

72:                                               ; preds = %69, %42
  %73 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 163
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %98, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  br label %78

78:                                               ; preds = %95, %76
  %79 = phi ptr [ %74, %76 ], [ %96, %95 ]
  %80 = getelementptr i8, ptr %79, i32 -8
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 48
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = getelementptr i8, ptr %79, i32 -16
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %79, i32 -12
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, %86
  %90 = load i32, ptr %77, align 8
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = getelementptr i8, ptr %79, i32 -4
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %43, align 4
  br label %138

95:                                               ; preds = %84, %78
  %96 = load ptr, ptr %79, align 4
  %97 = icmp eq ptr %96, %73
  br i1 %97, label %98, label %78

98:                                               ; preds = %95, %72
  %99 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 160
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, %99
  br i1 %101, label %124, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  br label %104

104:                                              ; preds = %121, %102
  %105 = phi ptr [ %100, %102 ], [ %122, %121 ]
  %106 = getelementptr i8, ptr %105, i32 -8
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 48
  %109 = icmp eq i32 %108, 32
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = getelementptr i8, ptr %105, i32 -16
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %105, i32 -12
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %112
  %116 = load i32, ptr %103, align 8
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = getelementptr i8, ptr %105, i32 -4
  %120 = load i32, ptr %119, align 4
  store i32 %120, ptr %43, align 4
  br label %138

121:                                              ; preds = %110, %104
  %122 = load ptr, ptr %105, align 4
  %123 = icmp eq ptr %122, %99
  br i1 %123, label %124, label %104

124:                                              ; preds = %121, %98
  %125 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 143
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  %128 = load i32, ptr %127, align 8
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %131, label %130

130:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  br label %197

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 174
  %133 = load i32, ptr %132, align 8
  %134 = call i32 @ubifs_lpt_scan_nolock(ptr noundef %0, i32 noundef -1, i32 noundef %133, ptr noundef nonnull @scan_dirty_idx_cb, ptr noundef nonnull %2) #7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %194

136:                                              ; preds = %131
  %137 = load i32, ptr %43, align 4
  br label %138

138:                                              ; preds = %136, %118, %92, %66
  %139 = phi i32 [ %137, %136 ], [ %120, %118 ], [ %94, %92 ], [ %68, %66 ]
  %140 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %141 = load i32, ptr %140, align 8
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %147, label %143, !prof !12

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %145 = load i32, ptr %144, align 8
  %146 = icmp slt i32 %139, %145
  br i1 %146, label %149, label %147, !prof !13

147:                                              ; preds = %143, %138
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 851) #7
  %148 = load i32, ptr %43, align 4
  br label %149

149:                                              ; preds = %147, %143
  %150 = phi i32 [ %148, %147 ], [ %139, %143 ]
  %151 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 174
  store i32 %150, ptr %151, align 8
  %152 = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %150) #7
  %153 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = ptrtoint ptr %152 to i32
  br label %194

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.ubifs_lprops, ptr %152, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %43, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %162, label %161, !prof !13

161:                                              ; preds = %156
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 856) #7
  br label %162

162:                                              ; preds = %161, %156
  %163 = load i32, ptr %152, align 4
  %164 = getelementptr inbounds %struct.ubifs_lprops, ptr %152, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, %163
  %167 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  %168 = load i32, ptr %167, align 8
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %171, !prof !12

170:                                              ; preds = %162
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 857) #7
  br label %171

171:                                              ; preds = %170, %162
  %172 = getelementptr inbounds %struct.ubifs_lprops, ptr %152, i32 0, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, 16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176, !prof !13

176:                                              ; preds = %171
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 858) #7
  %177 = load i32, ptr %172, align 4
  br label %178

178:                                              ; preds = %176, %171
  %179 = phi i32 [ %173, %171 ], [ %177, %176 ]
  %180 = and i32 %179, 32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184, !prof !12

182:                                              ; preds = %178
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 859) #7
  %183 = load i32, ptr %172, align 4
  br label %184

184:                                              ; preds = %182, %178
  %185 = phi i32 [ %183, %182 ], [ %179, %178 ]
  %186 = or i32 %185, 16
  %187 = call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %152, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %186, i32 noundef 0) #7
  %188 = icmp ugt ptr %187, inttoptr (i32 -4096 to ptr)
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = ptrtoint ptr %187 to i32
  br label %194

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.ubifs_lprops, ptr %187, i32 0, i32 3
  %193 = load i32, ptr %192, align 4
  br label %194

194:                                              ; preds = %191, %189, %154, %131
  %195 = phi i32 [ %155, %154 ], [ %190, %189 ], [ %193, %191 ], [ %134, %131 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  %196 = icmp eq i32 %195, -28
  br i1 %196, label %197, label %213

197:                                              ; preds = %194, %130
  %198 = call i32 @ubifs_get_idx_gc_leb(ptr noundef %0) #7
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %213, label %200

200:                                              ; preds = %197
  %201 = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %198) #7
  %202 = icmp ugt ptr %201, inttoptr (i32 -4096 to ptr)
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = ptrtoint ptr %201 to i32
  br label %213

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.ubifs_lprops, ptr %201, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = or i32 %207, 32
  %209 = call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %201, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %208, i32 noundef -1) #7
  %210 = icmp ugt ptr %209, inttoptr (i32 -4096 to ptr)
  %211 = ptrtoint ptr %209 to i32
  %212 = select i1 %210, i32 %211, i32 %198
  br label %213

213:                                              ; preds = %205, %203, %197, %194, %38
  %214 = phi i32 [ %195, %194 ], [ %204, %203 ], [ %198, %197 ], [ %212, %205 ], [ %40, %38 ]
  %215 = call zeroext i1 @mutex_is_locked(ptr noundef %3) #7
  br i1 %215, label %217, label %216, !prof !13

216:                                              ; preds = %213
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 256) #7
  br label %217

217:                                              ; preds = %216, %213
  %218 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %219 = load i32, ptr %218, align 8
  %220 = icmp sgt i32 %219, -1
  br i1 %220, label %221, label %225, !prof !13

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %223 = load i32, ptr %222, align 4
  %224 = icmp sgt i32 %219, %223
  br i1 %224, label %225, label %226, !prof !12

225:                                              ; preds = %221, %217
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 258) #7
  br label %226

226:                                              ; preds = %225, %221
  call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_scan_nolock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scan_for_dirty_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) #6 {
  %5 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %75

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %9
  %12 = and i32 %6, 15
  switch i32 %12, label %40 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %28
    i32 5, label %41
    i32 6, label %41
  ]

13:                                               ; preds = %11, %11, %11
  %14 = add nsw i32 %12, -1
  %15 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %14, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %1, align 4
  %22 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %26 = load i32, ptr %25, align 4
  %27 = icmp sge i32 %24, %26
  br label %41

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, %30
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %38 = load i32, ptr %37, align 8
  %39 = icmp slt i32 %36, %38
  br label %41

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40, %28, %20, %13, %11, %11
  %42 = phi i1 [ false, %40 ], [ true, %13 ], [ %27, %20 ], [ %39, %28 ], [ true, %11 ], [ true, %11 ]
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %41, %9
  %45 = phi i32 [ 0, %9 ], [ %43, %41 ]
  %46 = load i32, ptr %1, align 4
  %47 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %46
  %50 = load i32, ptr %3, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %75, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.scan_data, ptr %3, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %6, 32
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %49, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.scan_data, ptr %3, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %71

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %69 = load i32, ptr %68, align 8
  %70 = icmp slt i32 %48, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67, %63
  %72 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.scan_data, ptr %3, i32 0, i32 2
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %71, %67, %63, %52, %44, %4
  %76 = phi i32 [ 3, %71 ], [ 0, %4 ], [ %45, %44 ], [ %45, %63 ], [ %45, %67 ], [ %45, %52 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scan_for_free_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) #6 {
  %5 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %71

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %9
  %12 = and i32 %6, 15
  switch i32 %12, label %40 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %28
    i32 5, label %41
    i32 6, label %41
  ]

13:                                               ; preds = %11, %11, %11
  %14 = add nsw i32 %12, -1
  %15 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %14, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %1, align 4
  %22 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %26 = load i32, ptr %25, align 4
  %27 = icmp sge i32 %24, %26
  br label %41

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, %30
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %38 = load i32, ptr %37, align 8
  %39 = icmp slt i32 %36, %38
  br label %41

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40, %28, %20, %13, %11, %11
  %42 = phi i1 [ false, %40 ], [ true, %13 ], [ %27, %20 ], [ %39, %28 ], [ true, %11 ], [ true, %11 ]
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %41, %9
  %45 = phi i32 [ 0, %9 ], [ %43, %41 ]
  %46 = and i32 %6, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i32, ptr %1, align 4
  %50 = load i32, ptr %3, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.scan_data, ptr %3, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %49, %57
  %59 = select i1 %55, i1 %58, i1 false
  br i1 %59, label %71, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %49
  %64 = icmp eq i32 %63, %57
  %65 = icmp sgt i32 %62, 0
  %66 = and i1 %65, %64
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.scan_data, ptr %3, i32 0, i32 2
  store i32 %69, ptr %70, align 4
  br label %71

71:                                               ; preds = %67, %60, %52, %48, %44, %4
  %72 = phi i32 [ 3, %67 ], [ 0, %4 ], [ %45, %44 ], [ %45, %48 ], [ %45, %60 ], [ %45, %52 ]
  ret i32 %72
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scan_for_idx_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %9
  %12 = and i32 %6, 15
  switch i32 %12, label %40 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %28
    i32 5, label %41
    i32 6, label %41
  ]

13:                                               ; preds = %11, %11, %11
  %14 = add nsw i32 %12, -1
  %15 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %14, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %1, align 4
  %22 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %26 = load i32, ptr %25, align 4
  %27 = icmp sge i32 %24, %26
  br label %41

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, %30
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %38 = load i32, ptr %37, align 8
  %39 = icmp slt i32 %36, %38
  br label %41

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40, %28, %20, %13, %11, %11
  %42 = phi i1 [ false, %40 ], [ true, %13 ], [ %27, %20 ], [ %39, %28 ], [ true, %11 ], [ true, %11 ]
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %41, %9
  %45 = phi i32 [ 0, %9 ], [ %43, %41 ]
  %46 = and i32 %6, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, ptr %1, align 4
  %50 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.scan_data, ptr %3, i32 0, i32 2
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %48, %44, %4
  %61 = phi i32 [ 3, %56 ], [ 0, %4 ], [ %45, %44 ], [ %45, %48 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scan_dirty_idx_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %9
  %12 = and i32 %6, 15
  switch i32 %12, label %40 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %28
    i32 5, label %41
    i32 6, label %41
  ]

13:                                               ; preds = %11, %11, %11
  %14 = add nsw i32 %12, -1
  %15 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %14, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %1, align 4
  %22 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %26 = load i32, ptr %25, align 4
  %27 = icmp sge i32 %24, %26
  br label %41

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, %30
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %38 = load i32, ptr %37, align 8
  %39 = icmp slt i32 %36, %38
  br label %41

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40, %28, %20, %13, %11, %11
  %42 = phi i1 [ false, %40 ], [ true, %13 ], [ %27, %20 ], [ %39, %28 ], [ true, %11 ], [ true, %11 ]
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %41, %9
  %45 = phi i32 [ 0, %9 ], [ %43, %41 ]
  %46 = and i32 %6, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %1, align 4
  %50 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  %54 = load i32, ptr %53, align 8
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.scan_data, ptr %3, i32 0, i32 2
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %48, %44, %4
  %61 = phi i32 [ 3, %56 ], [ 0, %4 ], [ %45, %44 ], [ %45, %48 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_get_idx_gc_leb(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
!8 = !{i64 2149103224}
!9 = !{i64 2149099048}
!10 = !{i64 2149099123, i64 2149099150, i64 2149099197, i64 2149099219, i64 2149099247, i64 2149099267}
!11 = !{i64 2149126227}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"auto-init"}
