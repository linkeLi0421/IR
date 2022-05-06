; ModuleID = '/llk/IR/fs/jbd2/recovery.c_pt.bc'
source_filename = "../fs/jbd2/recovery.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.recovery_info = type { i32, i32, i32, i32, i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, [41 x i32], i32, [768 x i8] }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.anon.72 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_block_tag3_s = type { i32, i32, i32, i32 }
%struct.commit_header = type { i32, i32, i32, i8, i8, [2 x i8], [8 x i32], i64, i32 }
%struct.jbd2_journal_revoke_header_s = type { %struct.journal_header_s, i32 }

@.str = private unnamed_addr constant [35 x i8] c"\013JBD2: error %d scanning journal\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\013JBD2: Invalid checksum recovering block %lu in log\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\013JBD2: IO error %d recovering block %ld in log\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"\013JBD2: Invalid checksum recovering data block %llu in log\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\013JBD2: Out of memory during recovery.\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\013JBD2: Invalid checksum found in transaction %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"\013JBD2: recovery pass %d ended at transaction %u, expected %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\013JBD2: corrupted journal superblock\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\013JBD2: bad block at offset %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\013JBD2: Failed to read block at offset %u\0A\00", align 1
@jbd2_journal_has_csum_v2or3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/jbd2.h\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\013JBD2: IO error %d recovering block %lu in log\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_recover(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.recovery_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.journal_superblock_s, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.journal_superblock_s, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 42
  store i32 %12, ptr %13, align 8
  br label %41

14:                                               ; preds = %1
  %15 = call fastcc i32 @do_one_pass(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = call fastcc i32 @do_one_pass(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call fastcc i32 @do_one_pass(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2)
  br label %22

22:                                               ; preds = %20, %17, %14
  %23 = phi i32 [ %18, %17 ], [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %struct.recovery_info, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  %27 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 42
  store i32 %26, ptr %27, align 8
  tail call void @jbd2_journal_clear_revoke(ptr noundef %0) #8
  %28 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @sync_blockdev(ptr noundef %29) #8
  %31 = icmp eq i32 %23, 0
  %32 = select i1 %31, i32 %30, i32 %23
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %28, align 8
  %38 = tail call i32 @blkdev_issue_flush(ptr noundef %37) #8
  %39 = icmp eq i32 %32, 0
  %40 = select i1 %39, i32 %38, i32 %32
  br label %41

41:                                               ; preds = %36, %22, %8
  %42 = phi i32 [ 0, %8 ], [ %32, %22 ], [ %40, %36 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_one_pass(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.anon.72, align 8
  %6 = alloca %struct.anon.72, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store ptr null, ptr %9, align 4, !annotation !8
  %12 = tail call i32 @journal_tag_bytes(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 -1, ptr %10, align 4
  %13 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.journal_superblock_s, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = getelementptr inbounds %struct.journal_superblock_s, ptr %14, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  store i32 %20, ptr %8, align 4
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 %17, ptr %1, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = getelementptr inbounds %struct.recovery_info, ptr %1, i32 0, i32 1
  %25 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 31
  %27 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 28
  %28 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 27
  %29 = icmp eq i32 %2, 1
  %30 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %31 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %32 = getelementptr inbounds %struct.recovery_info, ptr %1, i32 0, i32 3
  %33 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 68
  %34 = icmp eq i32 %2, 2
  %35 = getelementptr inbounds %struct.recovery_info, ptr %1, i32 0, i32 4
  %36 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 71
  %37 = getelementptr inbounds %struct.anon.72, ptr %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.anon.72, ptr %5, i32 0, i32 1
  %39 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %40 = getelementptr inbounds %struct.recovery_info, ptr %1, i32 0, i32 2
  br label %41

41:                                               ; preds = %601, %23
  %42 = phi i64 [ 0, %23 ], [ %602, %601 ]
  %43 = phi i1 [ false, %23 ], [ %603, %601 ]
  %44 = phi i32 [ 0, %23 ], [ %604, %601 ]
  %45 = phi i32 [ 0, %23 ], [ %605, %601 ]
  %46 = phi i32 [ 0, %23 ], [ %606, %601 ]
  %47 = phi i32 [ %17, %23 ], [ %607, %601 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store ptr null, ptr %11, align 4, !annotation !8
  %48 = call i32 @__cond_resched() #8
  br i1 %21, label %55, label %49

49:                                               ; preds = %41
  %50 = load i32, ptr %24, align 4
  %51 = xor i32 %47, -1
  %52 = add i32 %50, %51
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %615

55:                                               ; preds = %49, %41
  %56 = load i32, ptr %8, align 4
  %57 = call fastcc i32 @jread(ptr noundef nonnull %9, ptr noundef %0, i32 noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %599

59:                                               ; preds = %55
  %60 = add i32 %56, 1
  store i32 %60, ptr %8, align 4
  %61 = load i32, ptr %25, align 8
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load ptr, ptr %13, align 4
  %65 = getelementptr inbounds %struct.journal_superblock_s, ptr %64, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 536870912
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr %27, ptr %26
  br label %70

70:                                               ; preds = %63, %59
  %71 = phi ptr [ %69, %63 ], [ %27, %59 ]
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %60, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %28, align 8
  %76 = sub i32 %60, %72
  %77 = add i32 %76, %75
  store i32 %77, ptr %8, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %77, %74 ], [ %60, %70 ]
  %80 = load ptr, ptr %9, align 4
  %81 = getelementptr inbounds %struct.buffer_head, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, -1741079616
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = icmp eq ptr %80, null
  br i1 %86, label %610, label %608

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.journal_header_s, ptr %82, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %91 = icmp eq i32 %90, %47
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = icmp eq ptr %80, null
  br i1 %93, label %610, label %608

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.journal_header_s, ptr %82, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96)
  switch i32 %97, label %594 [
    i32 1, label %98
    i32 2, label %438
    i32 5, label %515
  ]

98:                                               ; preds = %94
  br i1 %62, label %99, label %112

99:                                               ; preds = %98
  %100 = load ptr, ptr %13, align 4
  %101 = getelementptr inbounds %struct.journal_superblock_s, ptr %100, i32 0, i32 8
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 402653184
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load ptr, ptr %30, align 8
  %107 = icmp eq ptr %106, null
  %108 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %109 = xor i1 %108, true
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %112, !prof !9

111:                                              ; preds = %105
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %112

112:                                              ; preds = %111, %105, %99, %98
  %113 = load ptr, ptr %30, align 8
  %114 = icmp eq ptr %113, null
  %115 = select i1 %114, i32 %45, i32 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load ptr, ptr %9, align 4
  %119 = getelementptr inbounds %struct.buffer_head, ptr %118, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = call fastcc i32 @jbd2_descriptor_block_csum_verify(ptr noundef %0, ptr noundef %120)
  %122 = icmp ne i32 %121, 0
  %123 = or i1 %21, %122
  %124 = xor i1 %122, true
  %125 = select i1 %124, i1 true, i1 %43
  br i1 %123, label %130, label %126

126:                                              ; preds = %117
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %79) #9
  %128 = load ptr, ptr %9, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %599, label %596

130:                                              ; preds = %117, %112
  %131 = phi i1 [ %125, %117 ], [ %43, %112 ]
  br i1 %34, label %223, label %132

132:                                              ; preds = %130
  br i1 %21, label %133, label %152

133:                                              ; preds = %132
  %134 = load i32, ptr %25, align 8
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load ptr, ptr %13, align 4
  %138 = getelementptr inbounds %struct.journal_superblock_s, ptr %137, i32 0, i32 7
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 16777216
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i1 true, i1 %131
  br i1 %142, label %152, label %143

143:                                              ; preds = %136
  %144 = load i32, ptr %24, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load ptr, ptr %9, align 4
  %148 = call fastcc i32 @calc_chksums(ptr noundef %0, ptr noundef %147, ptr noundef nonnull %8, ptr noundef nonnull %10)
  %149 = load ptr, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8
  %150 = getelementptr inbounds %struct.buffer_head, ptr %149, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %150) #8
  %151 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %150, ptr %150, i32 1, ptr elementtype(i32) %150) #8
  br label %601

152:                                              ; preds = %143, %136, %133, %132
  %153 = load ptr, ptr %9, align 4
  %154 = load i32, ptr %31, align 8
  %155 = call i32 @journal_tag_bytes(ptr noundef %0) #8
  %156 = load i32, ptr %25, align 8
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %171

158:                                              ; preds = %152
  %159 = load ptr, ptr %13, align 4
  %160 = getelementptr inbounds %struct.journal_superblock_s, ptr %159, i32 0, i32 8
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 402653184
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %30, align 8
  %166 = icmp eq ptr %165, null
  %167 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %168 = xor i1 %167, true
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %171, !prof !9

170:                                              ; preds = %164
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %171

171:                                              ; preds = %170, %164, %158, %152
  %172 = load ptr, ptr %30, align 8
  %173 = icmp eq ptr %172, null
  %174 = add i32 %154, -4
  %175 = select i1 %173, i32 %154, i32 %174
  %176 = getelementptr inbounds %struct.buffer_head, ptr %153, i32 0, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr i8, ptr %177, i32 12
  %179 = ptrtoint ptr %177 to i32
  %180 = sub i32 %155, %179
  br label %181

181:                                              ; preds = %187, %171
  %182 = phi ptr [ %178, %171 ], [ %196, %187 ]
  %183 = phi i32 [ 0, %171 ], [ %190, %187 ]
  %184 = ptrtoint ptr %182 to i32
  %185 = add i32 %180, %184
  %186 = icmp sgt i32 %185, %175
  br i1 %186, label %199, label %187

187:                                              ; preds = %181
  %188 = getelementptr inbounds i8, ptr %182, i32 6
  %189 = load i16, ptr %188, align 1
  %190 = add i32 %183, 1
  %191 = getelementptr i8, ptr %182, i32 %155
  %192 = zext i16 %189 to i32
  %193 = lshr i32 %192, 5
  %194 = and i32 %193, 16
  %195 = xor i32 %194, 16
  %196 = getelementptr i8, ptr %191, i32 %195
  %197 = and i32 %192, 2048
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %181, label %199

199:                                              ; preds = %187, %181
  %200 = phi i32 [ %190, %187 ], [ %183, %181 ]
  %201 = add i32 %79, %200
  store i32 %201, ptr %8, align 4
  %202 = load i32, ptr %25, align 8
  %203 = icmp sgt i32 %202, 1
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load ptr, ptr %13, align 4
  %206 = getelementptr inbounds %struct.journal_superblock_s, ptr %205, i32 0, i32 8
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 536870912
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %209, ptr %27, ptr %26
  br label %211

211:                                              ; preds = %204, %199
  %212 = phi ptr [ %27, %199 ], [ %210, %204 ]
  %213 = load i32, ptr %212, align 4
  %214 = icmp ult i32 %201, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i32, ptr %28, align 8
  %217 = sub i32 %201, %213
  %218 = add i32 %217, %216
  store i32 %218, ptr %8, align 4
  br label %219

219:                                              ; preds = %215, %211
  %220 = load ptr, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %221 = getelementptr inbounds %struct.buffer_head, ptr %220, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %221) #8, !srcloc !11
  %222 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %221, ptr %221, i32 1, ptr elementtype(i32) %221) #8, !srcloc !12
  br label %601

223:                                              ; preds = %130
  %224 = load ptr, ptr %9, align 4
  %225 = getelementptr inbounds %struct.buffer_head, ptr %224, i32 0, i32 5
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr i8, ptr %226, i32 12
  %228 = load i32, ptr %8, align 4
  %229 = ptrtoint ptr %227 to i32
  %230 = ptrtoint ptr %226 to i32
  %231 = add i32 %12, %229
  %232 = sub i32 %231, %230
  %233 = load i32, ptr %31, align 8
  %234 = sub i32 %233, %115
  %235 = icmp sgt i32 %232, %234
  br i1 %235, label %427, label %236

236:                                              ; preds = %411, %223
  %237 = phi i32 [ %406, %411 ], [ %46, %223 ]
  %238 = phi i32 [ %405, %411 ], [ %44, %223 ]
  %239 = phi ptr [ %416, %411 ], [ %227, %223 ]
  %240 = phi i32 [ %269, %411 ], [ %79, %223 ]
  %241 = load i32, ptr %239, align 1
  %242 = getelementptr inbounds i8, ptr %239, i32 4
  %243 = load i16, ptr %242, align 1
  %244 = getelementptr inbounds i8, ptr %239, i32 6
  %245 = load i16, ptr %244, align 1
  %246 = getelementptr inbounds i8, ptr %239, i32 8
  %247 = load i32, ptr %246, align 1
  %248 = call i16 @llvm.bswap.i16(i16 %245)
  %249 = zext i16 %248 to i32
  %250 = add i32 %240, 1
  %251 = load i32, ptr %25, align 8
  %252 = icmp sgt i32 %251, 1
  br i1 %252, label %253, label %260

253:                                              ; preds = %236
  %254 = load ptr, ptr %13, align 4
  %255 = getelementptr inbounds %struct.journal_superblock_s, ptr %254, i32 0, i32 8
  %256 = load i32, ptr %255, align 4
  %257 = and i32 %256, 536870912
  %258 = icmp eq i32 %257, 0
  %259 = select i1 %258, ptr %27, ptr %26
  br label %260

260:                                              ; preds = %253, %236
  %261 = phi ptr [ %27, %236 ], [ %259, %253 ]
  %262 = load i32, ptr %261, align 4
  %263 = icmp ult i32 %250, %262
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = load i32, ptr %28, align 8
  %266 = sub i32 %250, %262
  %267 = add i32 %266, %265
  br label %268

268:                                              ; preds = %264, %260
  %269 = phi i32 [ %267, %264 ], [ %250, %260 ]
  %270 = call fastcc i32 @jread(ptr noundef nonnull %11, ptr noundef %0, i32 noundef %240)
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %270, i32 noundef %240) #9
  br label %404

274:                                              ; preds = %268
  %275 = load ptr, ptr %11, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %278, !prof !9

277:                                              ; preds = %274
  store i32 %269, ptr %8, align 4
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 633, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

278:                                              ; preds = %274
  %279 = call i32 @llvm.bswap.i32(i32 %241) #8
  %280 = zext i32 %279 to i64
  %281 = load i32, ptr %25, align 8
  %282 = icmp sgt i32 %281, 1
  br i1 %282, label %283, label %294

283:                                              ; preds = %278
  %284 = load ptr, ptr %13, align 4
  %285 = getelementptr inbounds %struct.journal_superblock_s, ptr %284, i32 0, i32 8
  %286 = load i32, ptr %285, align 4
  %287 = and i32 %286, 33554432
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %283
  %290 = call i32 @llvm.bswap.i32(i32 %247) #8
  %291 = zext i32 %290 to i64
  %292 = shl nuw i64 %291, 32
  %293 = or i64 %292, %280
  br label %294

294:                                              ; preds = %289, %283, %278
  %295 = phi i64 [ %293, %289 ], [ %280, %283 ], [ %280, %278 ]
  %296 = call i32 @jbd2_journal_test_revoke(ptr noundef %0, i64 noundef %295, i32 noundef %47) #8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %294
  call void @__brelse(ptr noundef nonnull %275) #8
  %299 = load i32, ptr %35, align 4
  %300 = add i32 %299, 1
  store i32 %300, ptr %35, align 4
  br label %404

301:                                              ; preds = %294
  %302 = getelementptr inbounds %struct.buffer_head, ptr %275, i32 0, i32 5
  %303 = load ptr, ptr %302, align 4
  %304 = load i32, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %305 = load i32, ptr %25, align 8
  %306 = icmp sgt i32 %305, 1
  br i1 %306, label %307, label %320

307:                                              ; preds = %301
  %308 = load ptr, ptr %13, align 4
  %309 = getelementptr inbounds %struct.journal_superblock_s, ptr %308, i32 0, i32 8
  %310 = load i32, ptr %309, align 4
  %311 = and i32 %310, 402653184
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %307
  %314 = load ptr, ptr %30, align 8
  %315 = icmp eq ptr %314, null
  %316 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %317 = xor i1 %316, true
  %318 = select i1 %315, i1 %317, i1 false
  br i1 %318, label %319, label %322, !prof !9

319:                                              ; preds = %313
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %320

320:                                              ; preds = %319, %307, %301
  %321 = load ptr, ptr %30, align 8
  br label %322

322:                                              ; preds = %320, %313
  %323 = phi ptr [ %321, %320 ], [ %314, %313 ]
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %326

325:                                              ; preds = %322
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %367

326:                                              ; preds = %322
  store i32 %304, ptr %7, align 4
  %327 = load i32, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #8, !annotation !8
  %328 = load i32, ptr %323, align 64
  %329 = icmp ugt i32 %328, 4
  br i1 %329, label %330, label %331, !prof !9

330:                                              ; preds = %326
  store i32 %269, ptr %8, align 4
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

331:                                              ; preds = %326
  store ptr %323, ptr %6, align 8
  store i32 %327, ptr %37, align 8
  %332 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 4) #8
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %335, label %334, !prof !15

334:                                              ; preds = %331
  store i32 %269, ptr %8, align 4
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

335:                                              ; preds = %331
  %336 = load i32, ptr %37, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  %337 = load i32, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #8, !annotation !8
  %338 = load ptr, ptr %30, align 8
  %339 = load i32, ptr %338, align 64
  %340 = icmp ugt i32 %339, 4
  br i1 %340, label %341, label %342, !prof !9

341:                                              ; preds = %335
  store i32 %269, ptr %8, align 4
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

342:                                              ; preds = %335
  store ptr %338, ptr %5, align 8
  store i32 %336, ptr %38, align 8
  %343 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef %303, i32 noundef %337) #8
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %346, label %345, !prof !15

345:                                              ; preds = %342
  store i32 %269, ptr %8, align 4
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

346:                                              ; preds = %342
  %347 = load i32, ptr %38, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %348 = load i32, ptr %25, align 8
  %349 = icmp sgt i32 %348, 1
  br i1 %349, label %350, label %361

350:                                              ; preds = %346
  %351 = load ptr, ptr %13, align 4
  %352 = getelementptr inbounds %struct.journal_superblock_s, ptr %351, i32 0, i32 8
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 268435456
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %361, label %356

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.journal_block_tag3_s, ptr %239, i32 0, i32 3
  %358 = load i32, ptr %357, align 4
  %359 = call i32 @llvm.bswap.i32(i32 %347) #8
  %360 = icmp eq i32 %358, %359
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br i1 %360, label %367, label %365

361:                                              ; preds = %350, %346
  %362 = trunc i32 %347 to i16
  %363 = call i16 @llvm.bswap.i16(i16 %362) #8
  %364 = icmp eq i16 %243, %363
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br i1 %364, label %367, label %365

365:                                              ; preds = %361, %356
  call void @__brelse(ptr noundef nonnull %275) #8
  %366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %295) #9
  br label %404

367:                                              ; preds = %361, %356, %325
  %368 = load ptr, ptr %39, align 8
  %369 = load i32, ptr %31, align 8
  %370 = call ptr @__getblk_gfp(ptr noundef %368, i64 noundef %295, i32 noundef %369, i32 noundef 8) #8
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %377

372:                                              ; preds = %367
  store i32 %269, ptr %8, align 4
  %373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  %374 = load ptr, ptr %9, align 4
  %375 = icmp eq ptr %374, null
  br i1 %375, label %596, label %376

376:                                              ; preds = %372
  call void @__brelse(ptr noundef nonnull %374) #8
  br label %596

377:                                              ; preds = %367
  %378 = load volatile i32, ptr %370, align 4
  %379 = and i32 %378, 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %377
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %370) #8, !srcloc !11
  %382 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %370, ptr nonnull %370, i32 4, ptr nonnull elementtype(i32) %370) #8, !srcloc !17
  %383 = extractvalue { i32, i32, i32 } %382, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %384 = and i32 %383, 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %381, %377
  call void @__lock_buffer(ptr noundef nonnull %370) #8
  br label %387

387:                                              ; preds = %386, %381
  %388 = getelementptr inbounds %struct.buffer_head, ptr %370, i32 0, i32 5
  %389 = load ptr, ptr %388, align 4
  %390 = load ptr, ptr %302, align 4
  %391 = load i32, ptr %31, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %389, ptr align 1 %390, i32 %391, i1 false)
  %392 = and i32 %249, 1
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %387
  %395 = load ptr, ptr %388, align 4
  store i32 -1741079616, ptr %395, align 4
  br label %396

396:                                              ; preds = %394, %387
  %397 = load volatile i32, ptr %370, align 4
  %398 = and i32 %397, 1
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %396
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %370) #8
  br label %401

401:                                              ; preds = %400, %396
  call void @mark_buffer_dirty(ptr noundef nonnull %370) #8
  %402 = load i32, ptr %40, align 4
  %403 = add i32 %402, 1
  store i32 %403, ptr %40, align 4
  call void @unlock_buffer(ptr noundef nonnull %370) #8
  call void @__brelse(ptr noundef nonnull %275) #8
  call void @__brelse(ptr noundef nonnull %370) #8
  br label %404

404:                                              ; preds = %401, %365, %298, %272
  %405 = phi i32 [ %238, %272 ], [ 1, %365 ], [ %238, %401 ], [ %238, %298 ]
  %406 = phi i32 [ %270, %272 ], [ -74, %365 ], [ %237, %401 ], [ %237, %298 ]
  %407 = and i32 %249, 8
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %404
  store i32 %269, ptr %8, align 4
  %410 = load ptr, ptr %9, align 4
  br label %432

411:                                              ; preds = %404
  %412 = getelementptr i8, ptr %239, i32 %12
  %413 = shl nuw nsw i32 %249, 3
  %414 = and i32 %413, 16
  %415 = xor i32 %414, 16
  %416 = getelementptr i8, ptr %412, i32 %415
  %417 = load ptr, ptr %9, align 4
  %418 = getelementptr inbounds %struct.buffer_head, ptr %417, i32 0, i32 5
  %419 = load ptr, ptr %418, align 4
  %420 = ptrtoint ptr %416 to i32
  %421 = ptrtoint ptr %419 to i32
  %422 = add i32 %12, %420
  %423 = sub i32 %422, %421
  %424 = load i32, ptr %31, align 8
  %425 = sub i32 %424, %115
  %426 = icmp sgt i32 %423, %425
  br i1 %426, label %427, label %236

427:                                              ; preds = %411, %223
  %428 = phi i32 [ %228, %223 ], [ %269, %411 ]
  %429 = phi ptr [ %224, %223 ], [ %417, %411 ]
  %430 = phi i32 [ %44, %223 ], [ %405, %411 ]
  %431 = phi i32 [ %46, %223 ], [ %406, %411 ]
  store i32 %428, ptr %8, align 4
  br label %432

432:                                              ; preds = %427, %409
  %433 = phi ptr [ %410, %409 ], [ %429, %427 ]
  %434 = phi i32 [ %405, %409 ], [ %430, %427 ]
  %435 = phi i32 [ %406, %409 ], [ %431, %427 ]
  %436 = icmp eq ptr %433, null
  br i1 %436, label %601, label %437

437:                                              ; preds = %432
  call void @__brelse(ptr noundef nonnull %433) #8
  br label %601

438:                                              ; preds = %94
  %439 = getelementptr inbounds %struct.commit_header, ptr %82, i32 0, i32 7
  %440 = load i64, ptr %439, align 8
  %441 = call i64 @llvm.bswap.i64(i64 %440)
  br i1 %43, label %442, label %453

442:                                              ; preds = %438
  %443 = icmp ult i64 %441, %42
  br i1 %443, label %450, label %444

444:                                              ; preds = %442
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %47) #9
  %446 = load ptr, ptr %9, align 4
  %447 = icmp eq ptr %446, null
  br i1 %447, label %599, label %596

448:                                              ; preds = %493
  %449 = load ptr, ptr %9, align 4
  br label %450

450:                                              ; preds = %448, %442
  %451 = phi ptr [ %449, %448 ], [ %80, %442 ]
  %452 = icmp eq ptr %451, null
  br i1 %452, label %610, label %608

453:                                              ; preds = %438
  br i1 %21, label %454, label %508

454:                                              ; preds = %453
  br i1 %62, label %455, label %490

455:                                              ; preds = %454
  %456 = load ptr, ptr %13, align 4
  %457 = getelementptr inbounds %struct.journal_superblock_s, ptr %456, i32 0, i32 7
  %458 = load i32, ptr %457, align 4
  %459 = and i32 %458, 16777216
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %490, label %461

461:                                              ; preds = %455
  %462 = getelementptr inbounds %struct.commit_header, ptr %82, i32 0, i32 6
  %463 = load i32, ptr %462, align 8
  %464 = load i32, ptr %24, align 4
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %469, label %466

466:                                              ; preds = %461
  store i32 %464, ptr %33, align 8
  %467 = icmp eq ptr %80, null
  br i1 %467, label %601, label %468

468:                                              ; preds = %466
  call void @__brelse(ptr noundef nonnull %80) #8
  br label %601

469:                                              ; preds = %461
  %470 = call i32 @llvm.bswap.i32(i32 %463)
  %471 = load i32, ptr %10, align 4
  %472 = icmp eq i32 %471, %470
  %473 = getelementptr inbounds %struct.commit_header, ptr %82, i32 0, i32 3
  %474 = load i8, ptr %473, align 4
  %475 = icmp eq i8 %474, 1
  %476 = select i1 %472, i1 %475, i1 false
  br i1 %476, label %477, label %481

477:                                              ; preds = %469
  %478 = getelementptr inbounds %struct.commit_header, ptr %82, i32 0, i32 4
  %479 = load i8, ptr %478, align 1
  %480 = icmp eq i8 %479, 4
  br i1 %480, label %489, label %493

481:                                              ; preds = %469
  %482 = icmp eq i8 %474, 0
  br i1 %482, label %483, label %493

483:                                              ; preds = %481
  %484 = getelementptr inbounds %struct.commit_header, ptr %82, i32 0, i32 4
  %485 = load i8, ptr %484, align 1
  %486 = icmp eq i8 %485, 0
  %487 = icmp eq i32 %463, 0
  %488 = select i1 %486, i1 %487, i1 false
  br i1 %488, label %489, label %493

489:                                              ; preds = %483, %477
  store i32 -1, ptr %10, align 4
  br label %490

490:                                              ; preds = %489, %455, %454
  %491 = call fastcc i32 @jbd2_commit_block_csum_verify(ptr noundef %0, ptr noundef %82)
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %508

493:                                              ; preds = %490, %483, %481, %477
  %494 = icmp ult i64 %441, %42
  br i1 %494, label %448, label %495

495:                                              ; preds = %493
  store i32 %47, ptr %24, align 4
  %496 = load i32, ptr %25, align 8
  %497 = icmp sgt i32 %496, 1
  br i1 %497, label %498, label %504

498:                                              ; preds = %495
  %499 = load ptr, ptr %13, align 4
  %500 = getelementptr inbounds %struct.journal_superblock_s, ptr %499, i32 0, i32 8
  %501 = load i32, ptr %500, align 4
  %502 = and i32 %501, 67108864
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %498, %495
  store i32 %47, ptr %33, align 8
  %505 = load ptr, ptr %9, align 4
  %506 = icmp eq ptr %505, null
  br i1 %506, label %601, label %507

507:                                              ; preds = %504
  call void @__brelse(ptr noundef nonnull %505) #8
  br label %601

508:                                              ; preds = %498, %490, %453
  %509 = phi i64 [ %42, %453 ], [ %441, %498 ], [ %441, %490 ]
  %510 = load ptr, ptr %9, align 4
  %511 = icmp eq ptr %510, null
  br i1 %511, label %513, label %512

512:                                              ; preds = %508
  call void @__brelse(ptr noundef nonnull %510) #8
  br label %513

513:                                              ; preds = %512, %508
  %514 = add i32 %47, 1
  br label %601

515:                                              ; preds = %94
  br i1 %21, label %516, label %521

516:                                              ; preds = %515
  %517 = call fastcc i32 @jbd2_descriptor_block_csum_verify(ptr noundef %0, ptr noundef %82)
  %518 = icmp eq i32 %517, 0
  %519 = select i1 %518, i1 true, i1 %43
  %520 = load ptr, ptr %9, align 4
  br label %522

521:                                              ; preds = %515
  br i1 %29, label %527, label %522

522:                                              ; preds = %521, %516
  %523 = phi ptr [ %520, %516 ], [ %80, %521 ]
  %524 = phi i1 [ %519, %516 ], [ %43, %521 ]
  %525 = icmp eq ptr %523, null
  br i1 %525, label %601, label %526

526:                                              ; preds = %522
  call void @__brelse(ptr noundef nonnull %523) #8
  br label %601

527:                                              ; preds = %521
  %528 = getelementptr inbounds %struct.jbd2_journal_revoke_header_s, ptr %82, i32 0, i32 1
  %529 = load i32, ptr %528, align 4
  %530 = call i32 @llvm.bswap.i32(i32 %529) #8
  br i1 %62, label %531, label %544

531:                                              ; preds = %527
  %532 = load ptr, ptr %13, align 4
  %533 = getelementptr inbounds %struct.journal_superblock_s, ptr %532, i32 0, i32 8
  %534 = load i32, ptr %533, align 4
  %535 = and i32 %534, 402653184
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %544, label %537

537:                                              ; preds = %531
  %538 = load ptr, ptr %30, align 8
  %539 = icmp eq ptr %538, null
  %540 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %541 = xor i1 %540, true
  %542 = select i1 %539, i1 %541, i1 false
  br i1 %542, label %543, label %544, !prof !9

543:                                              ; preds = %537
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %544

544:                                              ; preds = %543, %537, %531, %527
  %545 = load ptr, ptr %30, align 8
  %546 = icmp eq ptr %545, null
  %547 = select i1 %546, i32 0, i32 -4
  %548 = load i32, ptr %31, align 8
  %549 = add i32 %547, %548
  %550 = icmp ugt i32 %530, %549
  br i1 %550, label %587, label %551

551:                                              ; preds = %544
  %552 = load i32, ptr %25, align 8
  %553 = icmp sgt i32 %552, 1
  br i1 %553, label %554, label %561

554:                                              ; preds = %551
  %555 = load ptr, ptr %13, align 4
  %556 = getelementptr inbounds %struct.journal_superblock_s, ptr %555, i32 0, i32 8
  %557 = load i32, ptr %556, align 4
  %558 = and i32 %557, 33554432
  %559 = icmp ne i32 %558, 0
  %560 = select i1 %559, i32 8, i32 4
  br label %561

561:                                              ; preds = %554, %551
  %562 = phi i1 [ false, %551 ], [ %559, %554 ]
  %563 = phi i32 [ 4, %551 ], [ %560, %554 ]
  %564 = or i32 %563, 16
  %565 = icmp sgt i32 %564, %530
  br i1 %565, label %587, label %566

566:                                              ; preds = %582, %561
  %567 = phi i32 [ %585, %582 ], [ %564, %561 ]
  %568 = phi i32 [ %567, %582 ], [ 16, %561 ]
  %569 = load ptr, ptr %81, align 4
  %570 = getelementptr i8, ptr %569, i32 %568
  br i1 %562, label %575, label %571

571:                                              ; preds = %566
  %572 = load i32, ptr %570, align 4
  %573 = call i32 @llvm.bswap.i32(i32 %572) #8
  %574 = zext i32 %573 to i64
  br label %578

575:                                              ; preds = %566
  %576 = load i64, ptr %570, align 8
  %577 = call i64 @llvm.bswap.i64(i64 %576) #8
  br label %578

578:                                              ; preds = %575, %571
  %579 = phi i64 [ %574, %571 ], [ %577, %575 ]
  %580 = call i32 @jbd2_journal_set_revoke(ptr noundef %0, i64 noundef %579, i32 noundef %47) #8
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %587

582:                                              ; preds = %578
  %583 = load i32, ptr %32, align 4
  %584 = add i32 %583, 1
  store i32 %584, ptr %32, align 4
  %585 = add i32 %567, %563
  %586 = icmp sgt i32 %585, %530
  br i1 %586, label %587, label %566

587:                                              ; preds = %582, %578, %561, %544
  %588 = phi i32 [ -22, %544 ], [ 0, %561 ], [ %580, %578 ], [ 0, %582 ]
  %589 = load ptr, ptr %9, align 4
  %590 = icmp eq ptr %589, null
  br i1 %590, label %592, label %591

591:                                              ; preds = %587
  call void @__brelse(ptr noundef nonnull %589) #8
  br label %592

592:                                              ; preds = %591, %587
  %593 = icmp eq i32 %588, 0
  br i1 %593, label %601, label %599

594:                                              ; preds = %94
  %595 = icmp eq ptr %80, null
  br i1 %595, label %610, label %608

596:                                              ; preds = %444, %376, %372, %126
  %597 = phi ptr [ %128, %126 ], [ %275, %372 ], [ %275, %376 ], [ %446, %444 ]
  %598 = phi i32 [ -74, %126 ], [ -12, %372 ], [ -12, %376 ], [ -74, %444 ]
  call void @__brelse(ptr noundef nonnull %597) #8
  br label %599

599:                                              ; preds = %596, %592, %444, %126, %55
  %600 = phi i32 [ -74, %444 ], [ -74, %126 ], [ %598, %596 ], [ %57, %55 ], [ %588, %592 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %670

601:                                              ; preds = %592, %526, %522, %513, %507, %504, %468, %466, %437, %432, %219, %146
  %602 = phi i64 [ %509, %513 ], [ %42, %219 ], [ %42, %432 ], [ %42, %437 ], [ %42, %522 ], [ %42, %526 ], [ %42, %507 ], [ %42, %504 ], [ %42, %466 ], [ %42, %468 ], [ %42, %592 ], [ %42, %146 ]
  %603 = phi i1 [ false, %513 ], [ %131, %219 ], [ %131, %432 ], [ %131, %437 ], [ %524, %522 ], [ %524, %526 ], [ false, %507 ], [ false, %504 ], [ false, %466 ], [ false, %468 ], [ %43, %592 ], [ false, %146 ]
  %604 = phi i32 [ %44, %513 ], [ %44, %219 ], [ %434, %432 ], [ %434, %437 ], [ %44, %522 ], [ %44, %526 ], [ %44, %507 ], [ %44, %504 ], [ %44, %466 ], [ %44, %468 ], [ %44, %592 ], [ %44, %146 ]
  %605 = phi i32 [ %45, %513 ], [ %115, %219 ], [ %115, %432 ], [ %115, %437 ], [ %45, %522 ], [ %45, %526 ], [ %45, %507 ], [ %45, %504 ], [ %45, %466 ], [ %45, %468 ], [ %45, %592 ], [ %115, %146 ]
  %606 = phi i32 [ %46, %513 ], [ %46, %219 ], [ %435, %432 ], [ %435, %437 ], [ %46, %522 ], [ %46, %526 ], [ %46, %507 ], [ %46, %504 ], [ %46, %466 ], [ %46, %468 ], [ %46, %592 ], [ %46, %146 ]
  %607 = phi i32 [ %514, %513 ], [ %47, %219 ], [ %47, %432 ], [ %47, %437 ], [ %47, %522 ], [ %47, %526 ], [ %47, %507 ], [ %47, %504 ], [ %47, %466 ], [ %47, %468 ], [ %47, %592 ], [ %47, %146 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %41

608:                                              ; preds = %594, %450, %92, %85
  %609 = phi ptr [ %80, %85 ], [ %80, %92 ], [ %451, %450 ], [ %80, %594 ]
  call void @__brelse(ptr noundef nonnull %609) #8
  br label %610

610:                                              ; preds = %608, %594, %450, %92, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  %611 = load i32, ptr %24, align 4
  br i1 %21, label %612, label %615

612:                                              ; preds = %610
  %613 = icmp eq i32 %611, 0
  br i1 %613, label %614, label %622

614:                                              ; preds = %612
  store i32 %47, ptr %24, align 4
  br label %622

615:                                              ; preds = %610, %54
  %616 = phi i32 [ %50, %54 ], [ %611, %610 ]
  %617 = icmp eq i32 %616, %47
  br i1 %617, label %622, label %618

618:                                              ; preds = %615
  %619 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef %47, i32 noundef %616) #9
  %620 = icmp eq i32 %46, 0
  %621 = select i1 %620, i32 -5, i32 %46
  br label %622

622:                                              ; preds = %618, %615, %614, %612
  %623 = phi i32 [ %46, %612 ], [ %46, %614 ], [ %621, %618 ], [ %46, %615 ]
  %624 = load i32, ptr %25, align 8
  %625 = icmp sgt i32 %624, 1
  br i1 %625, label %626, label %664

626:                                              ; preds = %622
  %627 = load ptr, ptr %13, align 4
  %628 = getelementptr inbounds %struct.journal_superblock_s, ptr %627, i32 0, i32 8
  %629 = load i32, ptr %628, align 4
  %630 = and i32 %629, 536870912
  %631 = icmp ne i32 %630, 0
  %632 = icmp ne i32 %2, 1
  %633 = and i1 %632, %631
  br i1 %633, label %634, label %664

634:                                              ; preds = %626
  %635 = load i32, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  %636 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 29
  %637 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 73
  %638 = load ptr, ptr %637, align 4
  %639 = icmp eq ptr %638, null
  br i1 %639, label %660, label %640

640:                                              ; preds = %634
  %641 = load i32, ptr %636, align 8
  %642 = load i32, ptr %26, align 8
  %643 = icmp ugt i32 %641, %642
  br i1 %643, label %660, label %648

644:                                              ; preds = %653
  %645 = add i32 %649, 1
  %646 = load i32, ptr %26, align 8
  %647 = icmp ugt i32 %645, %646
  br i1 %647, label %660, label %648

648:                                              ; preds = %644, %640
  %649 = phi i32 [ %645, %644 ], [ %641, %640 ]
  %650 = call fastcc i32 @jread(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %649) #8
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %664

653:                                              ; preds = %648
  %654 = load ptr, ptr %637, align 4
  %655 = load ptr, ptr %4, align 4
  %656 = load i32, ptr %636, align 8
  %657 = sub i32 %649, %656
  %658 = call i32 %654(ptr noundef %0, ptr noundef %655, i32 noundef %2, i32 noundef %657, i32 noundef %635) #8
  %659 = icmp slt i32 %658, 1
  br i1 %659, label %661, label %644

660:                                              ; preds = %644, %640, %634
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %663

661:                                              ; preds = %653
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %662 = icmp eq i32 %658, 0
  br i1 %662, label %663, label %664

663:                                              ; preds = %661, %660
  br label %664

664:                                              ; preds = %663, %661, %652, %626, %622
  %665 = phi i32 [ %623, %626 ], [ %623, %663 ], [ %658, %661 ], [ %650, %652 ], [ %623, %622 ]
  %666 = icmp ne i32 %44, 0
  %667 = icmp eq i32 %665, 0
  %668 = select i1 %666, i1 %667, i1 false
  %669 = select i1 %668, i32 -5, i32 %665
  br label %670

670:                                              ; preds = %664, %599
  %671 = phi i32 [ %669, %664 ], [ %600, %599 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  ret i32 %671
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_clear_revoke(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_skip_recovery(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.recovery_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %3 = call fastcc i32 @do_one_pass(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #9
  %7 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 42
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.recovery_info, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  %14 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 42
  store i32 %13, ptr %14, align 8
  br label %15

15:                                               ; preds = %10, %5
  %16 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 25
  store i32 0, ptr %16, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  ret i32 %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_tag_bytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @jread(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca [8 x ptr], align 4
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  store ptr null, ptr %0, align 4
  %7 = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 37
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %153

12:                                               ; preds = %3
  %13 = call i32 @jbd2_journal_bmap(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %2) #9
  br label %153

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 32
  %19 = load ptr, ptr %18, align 4
  %20 = load i64, ptr %6, align 8
  %21 = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 33
  %22 = load i32, ptr %21, align 8
  %23 = call ptr @__getblk_gfp(ptr noundef %19, i64 noundef %20, i32 noundef %22, i32 noundef 8) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %153, label %25

25:                                               ; preds = %17
  %26 = load volatile i32, ptr %23, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %146

29:                                               ; preds = %25
  %30 = load volatile i32, ptr %23, align 4
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %141

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #8, !annotation !8
  %34 = load i32, ptr %21, align 8
  %35 = sdiv i32 131072, %34
  %36 = add i32 %35, %2
  %37 = load i32, ptr %7, align 4
  %38 = call i32 @llvm.umin.i32(i32 %36, i32 %37) #8
  %39 = icmp ugt i32 %38, %2
  br i1 %39, label %40, label %140

40:                                               ; preds = %33
  %41 = getelementptr inbounds ptr, ptr %5, i32 7
  %42 = getelementptr inbounds ptr, ptr %5, i32 6
  %43 = getelementptr inbounds ptr, ptr %5, i32 5
  %44 = getelementptr inbounds ptr, ptr %5, i32 4
  %45 = getelementptr inbounds ptr, ptr %5, i32 3
  %46 = getelementptr inbounds ptr, ptr %5, i32 2
  %47 = getelementptr inbounds ptr, ptr %5, i32 1
  %48 = call i32 @jbd2_journal_bmap(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %112, %40
  %51 = phi i32 [ %2, %40 ], [ %113, %112 ]
  %52 = phi i32 [ 0, %40 ], [ %114, %112 ]
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %51) #9
  br label %125

54:                                               ; preds = %112, %40
  %55 = phi i32 [ %114, %112 ], [ 0, %40 ]
  %56 = phi i32 [ %113, %112 ], [ %2, %40 ]
  %57 = load ptr, ptr %18, align 4
  %58 = load i64, ptr %4, align 8
  %59 = load i32, ptr %21, align 8
  %60 = call ptr @__getblk_gfp(ptr noundef %57, i64 noundef %58, i32 noundef %59, i32 noundef 8) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %125, label %62

62:                                               ; preds = %54
  %63 = load volatile i32, ptr %60, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %62
  %67 = load volatile i32, ptr %60, align 4
  %68 = and i32 %67, 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %66
  %71 = add i32 %55, 1
  %72 = getelementptr [8 x ptr], ptr %5, i32 0, i32 %55
  store ptr %60, ptr %72, align 4
  %73 = icmp eq i32 %71, 8
  br i1 %73, label %74, label %108

74:                                               ; preds = %70
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %5) #8
  %75 = load ptr, ptr %41, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @__brelse(ptr noundef nonnull %75) #8
  br label %78

78:                                               ; preds = %77, %74
  %79 = load ptr, ptr %42, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void @__brelse(ptr noundef nonnull %79) #8
  br label %82

82:                                               ; preds = %81, %78
  %83 = load ptr, ptr %43, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @__brelse(ptr noundef nonnull %83) #8
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr %44, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  call void @__brelse(ptr noundef nonnull %87) #8
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr %45, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  call void @__brelse(ptr noundef nonnull %91) #8
  br label %94

94:                                               ; preds = %93, %90
  %95 = load ptr, ptr %46, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @__brelse(ptr noundef nonnull %95) #8
  br label %98

98:                                               ; preds = %97, %94
  %99 = load ptr, ptr %47, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void @__brelse(ptr noundef nonnull %99) #8
  br label %102

102:                                              ; preds = %101, %98
  %103 = load ptr, ptr %5, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %117, label %105

105:                                              ; preds = %102, %66, %62
  %106 = phi ptr [ %103, %102 ], [ %60, %66 ], [ %60, %62 ]
  %107 = phi i32 [ 0, %102 ], [ %55, %66 ], [ %55, %62 ]
  call void @__brelse(ptr noundef nonnull %106) #8
  br label %108

108:                                              ; preds = %105, %70
  %109 = phi i32 [ %71, %70 ], [ %107, %105 ]
  %110 = add nuw i32 %56, 1
  %111 = icmp eq i32 %110, %38
  br i1 %111, label %120, label %112

112:                                              ; preds = %117, %108
  %113 = phi i32 [ %110, %108 ], [ %118, %117 ]
  %114 = phi i32 [ %109, %108 ], [ 0, %117 ]
  %115 = call i32 @jbd2_journal_bmap(ptr noundef %1, i32 noundef %113, ptr noundef nonnull %4) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %54, label %50

117:                                              ; preds = %102
  %118 = add nuw i32 %56, 1
  %119 = icmp eq i32 %118, %38
  br i1 %119, label %140, label %112

120:                                              ; preds = %108
  %121 = icmp eq i32 %109, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %120
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef %109, ptr noundef nonnull %5) #8
  %123 = add i32 %109, -1
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %129, label %140

125:                                              ; preds = %54, %50
  %126 = phi i32 [ %52, %50 ], [ %55, %54 ]
  %127 = add i32 %126, -1
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %129, label %140

129:                                              ; preds = %125, %122
  %130 = phi i32 [ %123, %122 ], [ %127, %125 ]
  br label %131

131:                                              ; preds = %137, %129
  %132 = phi i32 [ %138, %137 ], [ %130, %129 ]
  %133 = getelementptr ptr, ptr %5, i32 %132
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  call void @__brelse(ptr noundef nonnull %134) #8
  br label %137

137:                                              ; preds = %136, %131
  %138 = add i32 %132, -1
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %131, label %140

140:                                              ; preds = %137, %125, %122, %120, %117, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %141

141:                                              ; preds = %140, %29
  %142 = load volatile i32, ptr %23, align 4
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  call void @__wait_on_buffer(ptr noundef nonnull %23) #8
  br label %146

146:                                              ; preds = %145, %141, %25
  %147 = load volatile i32, ptr %23, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %2) #9
  call void @__brelse(ptr noundef nonnull %23) #8
  br label %153

152:                                              ; preds = %146
  store ptr %23, ptr %0, align 4
  br label %153

153:                                              ; preds = %152, %150, %17, %15, %10
  %154 = phi i32 [ -117, %10 ], [ %13, %15 ], [ 0, %152 ], [ -5, %150 ], [ -12, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @jbd2_descriptor_block_csum_verify(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.anon.72, align 8
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.journal_superblock_s, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 402653184
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %14
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %22

22:                                               ; preds = %21, %14, %7, %2
  %23 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr i8, ptr %1, i32 %28
  %30 = getelementptr i8, ptr %29, i32 -4
  %31 = load i32, ptr %30, align 4
  store i32 0, ptr %30, align 4
  %32 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 71
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %27, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  %35 = load ptr, ptr %23, align 8
  %36 = load i32, ptr %35, align 64
  %37 = icmp ugt i32 %36, 4
  br i1 %37, label %38, label %39, !prof !9

38:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

39:                                               ; preds = %26
  store ptr %35, ptr %3, align 8
  %40 = getelementptr inbounds %struct.anon.72, ptr %3, i32 0, i32 1
  store i32 %33, ptr %40, align 8
  %41 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %34) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !15

43:                                               ; preds = %39
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

44:                                               ; preds = %39
  %45 = load i32, ptr %40, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  store i32 %31, ptr %30, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = icmp eq i32 %31, %46
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %44, %22
  %50 = phi i32 [ %48, %44 ], [ 1, %22 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calc_chksums(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @journal_tag_bytes(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.journal_superblock_s, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 402653184
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  %23 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %19
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %27

27:                                               ; preds = %26, %19, %12, %4
  %28 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  %31 = add i32 %7, -4
  %32 = select i1 %30, i32 %7, i32 %31
  %33 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 12
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %8, %36
  br label %38

38:                                               ; preds = %44, %27
  %39 = phi ptr [ %35, %27 ], [ %53, %44 ]
  %40 = phi i32 [ 0, %27 ], [ %47, %44 ]
  %41 = ptrtoint ptr %39 to i32
  %42 = add i32 %37, %41
  %43 = icmp sgt i32 %42, %32
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds i8, ptr %39, i32 6
  %46 = load i16, ptr %45, align 1
  %47 = add i32 %40, 1
  %48 = getelementptr i8, ptr %39, i32 %8
  %49 = zext i16 %46 to i32
  %50 = lshr i32 %49, 5
  %51 = and i32 %50, 16
  %52 = xor i32 %51, 16
  %53 = getelementptr i8, ptr %48, i32 %52
  %54 = and i32 %49, 2048
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %38, label %56

56:                                               ; preds = %44, %38
  %57 = phi i32 [ %47, %44 ], [ %40, %38 ]
  %58 = load i32, ptr %3, align 4
  %59 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %60 = load i32, ptr %59, align 8
  %61 = tail call i32 @crc32_be(i32 noundef %58, ptr noundef %34, i32 noundef %60) #10
  store i32 %61, ptr %3, align 4
  %62 = icmp sgt i32 %57, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 28
  %65 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %66 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 31
  %67 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 27
  br label %68

68:                                               ; preds = %94, %63
  %69 = phi i32 [ 0, %63 ], [ %104, %94 ]
  %70 = load i32, ptr %2, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %2, align 4
  %72 = load i32, ptr %9, align 8
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load ptr, ptr %65, align 4
  %76 = getelementptr inbounds %struct.journal_superblock_s, ptr %75, i32 0, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 536870912
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, ptr %64, ptr %66
  br label %81

81:                                               ; preds = %74, %68
  %82 = phi ptr [ %80, %74 ], [ %64, %68 ]
  %83 = load i32, ptr %82, align 4
  %84 = icmp ult i32 %71, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %67, align 8
  %87 = sub i32 %71, %83
  %88 = add i32 %87, %86
  store i32 %88, ptr %2, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = call fastcc i32 @jread(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %70)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %90, i32 noundef %70) #9
  br label %106

94:                                               ; preds = %89
  %95 = load i32, ptr %3, align 4
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 4
  %100 = load i32, ptr %99, align 8
  %101 = tail call i32 @crc32_be(i32 noundef %95, ptr noundef %98, i32 noundef %100) #10
  store i32 %101, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %102 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #8, !srcloc !11
  %103 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #8, !srcloc !12
  %104 = add nuw nsw i32 %69, 1
  %105 = icmp eq i32 %104, %57
  br i1 %105, label %106, label %68

106:                                              ; preds = %94, %92, %56
  %107 = phi i32 [ 1, %92 ], [ 0, %56 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %107
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_test_revoke(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @jbd2_commit_block_csum_verify(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.anon.72, align 8
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.journal_superblock_s, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 402653184
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %14
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %22

22:                                               ; preds = %21, %14, %7, %2
  %23 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.commit_header, ptr %1, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  store i32 0, ptr %27, align 8
  %29 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 71
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %32 = load i32, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  %33 = load ptr, ptr %23, align 8
  %34 = load i32, ptr %33, align 64
  %35 = icmp ugt i32 %34, 4
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

37:                                               ; preds = %26
  store ptr %33, ptr %3, align 8
  %38 = getelementptr inbounds %struct.anon.72, ptr %3, i32 0, i32 1
  store i32 %30, ptr %38, align 8
  %39 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %32) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !15

41:                                               ; preds = %37
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

42:                                               ; preds = %37
  %43 = load i32, ptr %38, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  store i32 %28, ptr %27, align 8
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = icmp eq i32 %28, %44
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %42, %22
  %48 = phi i32 [ %46, %42 ], [ 1, %22 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_bmap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_set_revoke(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }

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
!10 = !{i64 2152584545}
!11 = !{i64 423556, i64 2147913527, i64 2147913553, i64 2147913600, i64 2147913622, i64 2147913650, i64 2147913670}
!12 = !{i64 2147927299, i64 2147927325, i64 2147927354, i64 2147927388, i64 2147927419, i64 2147927442}
!13 = !{i64 2153309017, i64 2153309500, i64 2153309054, i64 2153309110, i64 2153309144, i64 2153309168, i64 2153309209, i64 2153309230, i64 2153309258, i64 2153309292}
!14 = !{i64 2153285834, i64 2153286320, i64 2153285871, i64 2153285927, i64 2153285961, i64 2153285985, i64 2153286026, i64 2153286047, i64 2153286075, i64 2153286109}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2153286838, i64 2153287324, i64 2153286875, i64 2153286931, i64 2153286965, i64 2153286989, i64 2153287030, i64 2153287051, i64 2153287079, i64 2153287113}
!17 = !{i64 2147933404, i64 2147933436, i64 2147933465, i64 2147933499, i64 2147933530, i64 2147933553}
!18 = !{i64 2148034720}
