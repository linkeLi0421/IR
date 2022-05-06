; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a6xx_hfi.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a6xx_hfi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.a6xx_hfi_gx_bw_perf_vote_cmd = type { i32, i32, i32, i32 }
%struct.a6xx_hfi_msg_response = type { i32, i32, i32, [16 x i32] }
%struct.a6xx_gmu = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, i32, ptr, ptr, ptr, i32, i32, [16 x i32], [16 x i32], i32, [4 x i32], [4 x i32], i32, [2 x %struct.a6xx_hfi_queue], i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.a6xx_gmu_bo = type { ptr, ptr, i32, i64 }
%struct.a6xx_hfi_queue = type { ptr, %struct.spinlock, ptr, %struct.atomic_t, [8 x i32], i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.a6xx_hfi_queue_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.a6xx_hfi_prep_slumber_cmd = type { i32, i32, i32 }
%struct.a6xx_hfi_msg_start = type { i32 }
%struct.a6xx_hfi_msg_core_fw_start = type { i32, i32 }
%struct.a6xx_hfi_msg_perf_table = type { i32, i32, i32, [16 x %struct.perf_gx_level], [4 x %struct.perf_level] }
%struct.perf_gx_level = type { i32, i32, i32 }
%struct.perf_level = type { i32, i32 }
%struct.a6xx_hfi_msg_test = type { i32 }
%struct.a6xx_hfi_msg_perf_table_v1 = type { i32, i32, i32, [16 x %struct.perf_level], [4 x %struct.perf_level] }
%struct.a6xx_hfi_msg_fw_version = type { i32, i32 }
%struct.a6xx_hfi_msg_gmu_init_cmd = type { i32, i32, i32, i32, i32 }
%struct.a6xx_hfi_msg_bw_table = type { i32, i32, i32, i32, i32, i32, [6 x i32], [2 x [6 x i32]], [8 x i32], [16 x [8 x i32]] }
%struct.a6xx_hfi_queue_table_header = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"*ERROR* HFI queue %d is not empty\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"*ERROR* Unable to send message %s id %d\0A\00", align 1
@a6xx_hfi_msg_id = internal unnamed_addr constant [34 x ptr] [ptr @.str.3, ptr @.str.4, ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.10, ptr null, ptr null, ptr @.str.11], align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"HFI_H2F_MSG_INIT\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"HFI_H2F_MSG_FW_VERSION\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"HFI_H2F_MSG_BW_TABLE\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"HFI_H2F_MSG_PERF_TABLE\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"HFI_H2F_MSG_TEST\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"HFI_H2F_MSG_START\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"HFI_H2F_MSG_CORE_FW_START\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"HFI_H2F_MSG_GX_BW_PERF_VOTE\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"HFI_H2F_MSG_PREPARE_SLUMBER\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"*ERROR* Message %s id %d timed out waiting for response\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"*ERROR* The HFI response queue is unexpectedly empty\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"*ERROR* GMU firmware error %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"*ERROR* Unexpected message id %d on the response queue\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"*ERROR* Message %s id %d returned error %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_hfi_set_freq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.a6xx_hfi_gx_bw_perf_vote_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.a6xx_hfi_gx_bw_perf_vote_cmd, ptr %3, i32 0, i32 1
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.a6xx_hfi_gx_bw_perf_vote_cmd, ptr %3, i32 0, i32 2
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.a6xx_hfi_gx_bw_perf_vote_cmd, ptr %3, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 30, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.a6xx_hfi_msg_response, align 4
  %7 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27
  %8 = lshr i32 %3, 2
  %9 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #5, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #5, !srcloc !10
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %12 = srem i32 %11, 4095
  %13 = shl i32 %12, 20
  %14 = shl i32 %8, 8
  %15 = or i32 %14, %1
  %16 = or i32 %15, %13
  store i32 %16, ptr %2, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %17, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %20) #5
  %21 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %17, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %18, align 4
  %24 = xor i32 %23, -1
  %25 = add i32 %22, %24
  %26 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %17, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  %29 = and i32 %28, %25
  %30 = icmp ult i32 %29, %8
  br i1 %30, label %72, label %31

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 5
  %33 = load i8, ptr %32, align 4
  %34 = add i8 %33, 1
  store i8 %34, ptr %32, align 4
  %35 = and i8 %33, 7
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.a6xx_hfi_queue, ptr %7, i32 0, i32 4, i32 %36
  store i32 %19, ptr %37, align 4
  %38 = icmp ult i32 %3, 4
  br i1 %38, label %53, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 2
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ %19, %39 ], [ %50, %41 ]
  %43 = phi i32 [ 0, %39 ], [ %51, %41 ]
  %44 = getelementptr i32, ptr %2, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %40, align 4
  %47 = getelementptr i32, ptr %46, i32 %42
  store i32 %45, ptr %47, align 4
  %48 = add i32 %42, 1
  %49 = load i32, ptr %26, align 4
  %50 = urem i32 %48, %49
  %51 = add nuw nsw i32 %43, 1
  %52 = icmp eq i32 %51, %8
  br i1 %52, label %53, label %41

53:                                               ; preds = %41, %31
  %54 = phi i32 [ %19, %31 ], [ %50, %41 ]
  %55 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 30
  %56 = load i8, ptr %55, align 2, !range !12
  %57 = icmp ne i8 %56, 0
  %58 = and i32 %54, 3
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 2
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i32 [ %54, %61 ], [ %69, %63 ]
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr i32, ptr %65, i32 %64
  store i32 -84215046, ptr %66, align 4
  %67 = add i32 %64, 1
  %68 = load i32, ptr %26, align 4
  %69 = urem i32 %67, %68
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %63

72:                                               ; preds = %5
  %73 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %17, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %76 = load i16, ptr %20, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %78 = load ptr, ptr %0, align 8
  %79 = getelementptr [34 x ptr], ptr @a6xx_hfi_msg_id, i32 0, i32 %1
  %80 = load ptr, ptr %79, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %78, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef %80, i32 noundef %12) #5
  br label %212

81:                                               ; preds = %63, %53
  %82 = phi i32 [ %54, %53 ], [ %69, %63 ]
  store i32 %82, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %83 = load i16, ptr %20, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %85 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 83536
  tail call void @msm_writel(i32 noundef 1, ptr noundef %87) #5
  %88 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1
  %89 = tail call i64 @ktime_get() #5
  %90 = add i64 %89, 5000000
  %91 = load ptr, ptr %85, align 4
  %92 = getelementptr i8, ptr %91, i32 83528
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %103, %81
  %97 = tail call i64 @ktime_get() #5
  %98 = icmp sgt i64 %97, %90
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load ptr, ptr %85, align 4
  %101 = getelementptr i8, ptr %100, i32 83528
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  br label %109

103:                                              ; preds = %96
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %104 = load ptr, ptr %85, align 4
  %105 = getelementptr i8, ptr %104, i32 83528
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %96, label %109

109:                                              ; preds = %103, %99, %81
  %110 = phi i32 [ %102, %99 ], [ %93, %81 ], [ %106, %103 ]
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr [34 x ptr], ptr @a6xx_hfi_msg_id, i32 0, i32 %1
  %116 = load ptr, ptr %115, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %114, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, ptr noundef %116, i32 noundef %12) #5
  br label %212

117:                                              ; preds = %109
  %118 = load ptr, ptr %85, align 4
  %119 = getelementptr i8, ptr %118, i32 83524
  tail call void @msm_writel(i32 noundef 1, ptr noundef %119) #5
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %6, i8 0, i32 76, i1 false) #5, !annotation !20
  %120 = load ptr, ptr %88, align 4
  %121 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %120, i32 0, i32 10
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %120, i32 0, i32 11
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %117
  %127 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 2
  %128 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 5
  %129 = getelementptr inbounds %struct.a6xx_hfi_msg_response, ptr %6, i32 0, i32 1
  br label %133

130:                                              ; preds = %205, %117
  %131 = phi ptr [ %120, %117 ], [ %206, %205 ]
  %132 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %131, i32 0, i32 8
  store i32 1, ptr %132, align 4
  br label %180

133:                                              ; preds = %205, %126
  %134 = phi i32 [ %122, %126 ], [ %208, %205 ]
  %135 = phi ptr [ %121, %126 ], [ %207, %205 ]
  %136 = phi ptr [ %120, %126 ], [ %206, %205 ]
  %137 = load ptr, ptr %127, align 4
  %138 = getelementptr i32, ptr %137, i32 %134
  %139 = load i32, ptr %138, align 4
  %140 = load i8, ptr %128, align 4
  %141 = add i8 %140, 1
  store i8 %141, ptr %128, align 4
  %142 = and i8 %140, 7
  %143 = zext i8 %142 to i32
  %144 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 4, i32 %143
  store i32 %134, ptr %144, align 4
  %145 = lshr i32 %139, 8
  %146 = and i32 %145, 255
  %147 = icmp ugt i32 %146, 19
  br i1 %147, label %157, label %148, !prof !21

148:                                              ; preds = %133
  %149 = icmp eq i32 %146, 0
  br i1 %149, label %168, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %136, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %138, align 4
  store i32 %153, ptr %6, align 4
  %154 = add i32 %134, 1
  %155 = urem i32 %154, %152
  %156 = icmp eq i32 %146, 1
  br i1 %156, label %168, label %158

157:                                              ; preds = %133
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a6xx_hfi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

158:                                              ; preds = %158, %150
  %159 = phi i32 [ %166, %158 ], [ 1, %150 ]
  %160 = phi i32 [ %165, %158 ], [ %155, %150 ]
  %161 = getelementptr i32, ptr %137, i32 %160
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr i32, ptr %6, i32 %159
  store i32 %162, ptr %163, align 4
  %164 = add i32 %160, 1
  %165 = urem i32 %164, %152
  %166 = add nuw nsw i32 %159, 1
  %167 = icmp eq i32 %166, %146
  br i1 %167, label %168, label %158

168:                                              ; preds = %158, %150, %148
  %169 = phi i32 [ %134, %148 ], [ %155, %150 ], [ %165, %158 ]
  %170 = load i8, ptr %55, align 2, !range !12
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = add i32 %169, 3
  %174 = and i32 %173, -4
  %175 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %136, i32 0, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = urem i32 %174, %176
  br label %178

178:                                              ; preds = %172, %168
  %179 = phi i32 [ %169, %168 ], [ %177, %172 ]
  store i32 %179, ptr %135, align 4
  br i1 %149, label %180, label %182

180:                                              ; preds = %178, %130
  %181 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %181, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #5
  br label %203

182:                                              ; preds = %178
  %183 = load i32, ptr %6, align 4
  %184 = and i32 %183, 255
  %185 = icmp eq i32 %184, 100
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load ptr, ptr %0, align 8
  %188 = load i32, ptr %129, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %187, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %188) #5
  br label %205

189:                                              ; preds = %182
  %190 = load i32, ptr %129, align 4
  %191 = lshr i32 %190, 20
  %192 = icmp eq i32 %191, %12
  br i1 %192, label %195, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %194, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %191) #5
  br label %205

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.a6xx_hfi_msg_response, ptr %6, i32 0, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %0, align 8
  %201 = getelementptr [34 x ptr], ptr @a6xx_hfi_msg_id, i32 0, i32 %1
  %202 = load ptr, ptr %201, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %200, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, ptr noundef %202, i32 noundef %12, i32 noundef %197) #5
  br label %203

203:                                              ; preds = %199, %195, %180
  %204 = phi i32 [ 0, %195 ], [ -2, %180 ], [ -22, %199 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %6) #5
  br label %212

205:                                              ; preds = %193, %186
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %6, i8 0, i32 76, i1 false) #5, !annotation !20
  %206 = load ptr, ptr %88, align 4
  %207 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %206, i32 0, i32 10
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %206, i32 0, i32 11
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %130, label %133

212:                                              ; preds = %203, %113, %72
  %213 = phi i32 [ -28, %72 ], [ -110, %113 ], [ %204, %203 ]
  ret i32 %213
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_hfi_send_prep_slumber(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.a6xx_hfi_prep_slumber_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  %3 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 33, ptr noundef nonnull %2, i32 noundef 12, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_hfi_start(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.a6xx_hfi_msg_start, align 4
  %4 = alloca %struct.a6xx_hfi_msg_core_fw_start, align 8
  %5 = alloca %struct.a6xx_hfi_msg_perf_table, align 4
  %6 = alloca %struct.a6xx_hfi_msg_test, align 4
  %7 = alloca %struct.a6xx_hfi_msg_perf_table_v1, align 4
  %8 = alloca %struct.a6xx_hfi_msg_fw_version, align 8
  %9 = alloca %struct.a6xx_hfi_msg_gmu_init_cmd, align 8
  %10 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 30
  %11 = load i8, ptr %10, align 2, !range !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %67, label %13

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #5
  store i64 0, ptr %9, align 8
  %14 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 10, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, ptr %9, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 10, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, ptr %9, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, ptr %9, i32 0, i32 4
  store i32 %1, ptr %21, align 8
  %22 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 20, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %111

24:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  store i64 1153202979583557632, ptr %8, align 8
  %25 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %111

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %7) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %7, i8 0, i32 172, i1 false) #5
  %28 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table_v1, ptr %7, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 23
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table_v1, ptr %7, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = icmp sgt i32 %29, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %37, %27
  %36 = icmp sgt i32 %32, 0
  br i1 %36, label %48, label %59

37:                                               ; preds = %37, %27
  %38 = phi i32 [ %46, %37 ], [ 0, %27 ]
  %39 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 22, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.a6xx_hfi_msg_perf_table_v1, ptr %7, i32 0, i32 3, i32 %38
  store i32 %40, ptr %41, align 4
  %42 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 21, i32 %38
  %43 = load i32, ptr %42, align 4
  %44 = udiv i32 %43, 1000
  %45 = getelementptr %struct.a6xx_hfi_msg_perf_table_v1, ptr %7, i32 0, i32 3, i32 %38, i32 1
  store i32 %44, ptr %45, align 4
  %46 = add nuw nsw i32 %38, 1
  %47 = icmp eq i32 %46, %29
  br i1 %47, label %35, label %37

48:                                               ; preds = %48, %35
  %49 = phi i32 [ %57, %48 ], [ 0, %35 ]
  %50 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 25, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.a6xx_hfi_msg_perf_table_v1, ptr %7, i32 0, i32 4, i32 %49
  store i32 %51, ptr %52, align 4
  %53 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 24, i32 %49
  %54 = load i32, ptr %53, align 4
  %55 = udiv i32 %54, 1000
  %56 = getelementptr %struct.a6xx_hfi_msg_perf_table_v1, ptr %7, i32 0, i32 4, i32 %49, i32 1
  store i32 %55, ptr %56, align 4
  %57 = add nuw nsw i32 %49, 1
  %58 = icmp eq i32 %57, %32
  br i1 %58, label %59, label %48

59:                                               ; preds = %48, %35
  %60 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %7, i32 noundef 172, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %7) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %111

62:                                               ; preds = %59
  %63 = tail call fastcc i32 @a6xx_hfi_send_bw_table(ptr noundef %0) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4
  %66 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %6, i32 noundef 4, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  br label %111

67:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(236) %5, i8 0, i32 236, i1 false) #5
  %68 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 20
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, ptr %5, i32 0, i32 1
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 23
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, ptr %5, i32 0, i32 2
  store i32 %72, ptr %73, align 4
  %74 = icmp sgt i32 %69, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %77, %67
  %76 = icmp sgt i32 %72, 0
  br i1 %76, label %89, label %100

77:                                               ; preds = %77, %67
  %78 = phi i32 [ %87, %77 ], [ 0, %67 ]
  %79 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 22, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %5, i32 0, i32 3, i32 %78
  store i32 %80, ptr %81, align 4
  %82 = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %5, i32 0, i32 3, i32 %78, i32 1
  store i32 -1, ptr %82, align 4
  %83 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 21, i32 %78
  %84 = load i32, ptr %83, align 4
  %85 = udiv i32 %84, 1000
  %86 = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %5, i32 0, i32 3, i32 %78, i32 2
  store i32 %85, ptr %86, align 4
  %87 = add nuw nsw i32 %78, 1
  %88 = icmp eq i32 %87, %69
  br i1 %88, label %75, label %77

89:                                               ; preds = %89, %75
  %90 = phi i32 [ %98, %89 ], [ 0, %75 ]
  %91 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 25, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %5, i32 0, i32 4, i32 %90
  store i32 %92, ptr %93, align 4
  %94 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 24, i32 %90
  %95 = load i32, ptr %94, align 4
  %96 = udiv i32 %95, 1000
  %97 = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %5, i32 0, i32 4, i32 %90, i32 1
  store i32 %96, ptr %97, align 4
  %98 = add nuw nsw i32 %90, 1
  %99 = icmp eq i32 %98, %72
  br i1 %99, label %100, label %89

100:                                              ; preds = %89, %75
  %101 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 236, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %5) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = tail call fastcc i32 @a6xx_hfi_send_bw_table(ptr noundef %0)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i64 0, ptr %4, align 8
  %107 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 14, ptr noundef nonnull %4, i32 noundef 8, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %110 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %3, i32 noundef 4, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %111

111:                                              ; preds = %109, %106, %103, %100, %65, %62, %59, %24, %13
  %112 = phi i32 [ %101, %100 ], [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ 0, %65 ], [ %22, %13 ], [ %25, %24 ], [ %60, %59 ], [ %63, %62 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_hfi_send_bw_table(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.a6xx_hfi_msg_bw_table, align 4
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(640) %2, i8 0, i32 640, i1 false)
  %3 = getelementptr i8, ptr %0, i32 -60
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %55 [
    i32 618, label %5
    i32 680, label %20
    i32 640, label %20
    i32 650, label %40
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 1
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 3
  store i32 3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 5
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8
  store i32 327680, ptr %9, align 4
  %10 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 1
  store i32 327740, ptr %10, align 4
  %11 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 2
  store i32 327692, ptr %11, align 4
  %12 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9
  store i32 1073741824, ptr %12, align 4
  %13 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 1
  store i32 1073741824, ptr %13, align 4
  %14 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 2
  store i32 1073741824, ptr %14, align 4
  %15 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 2
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 4
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6
  store i32 327804, ptr %17, align 4
  %18 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7
  store i32 1073741824, ptr %18, align 4
  %19 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1
  br label %111

20:                                               ; preds = %1, %1
  %21 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 1
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 3
  store i32 3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 5
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8
  store i32 327680, ptr %24, align 4
  %25 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 1
  store i32 327740, ptr %25, align 4
  %26 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 2
  store i32 327692, ptr %26, align 4
  %27 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9
  store i32 1073741824, ptr %27, align 4
  %28 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 1
  store i32 1073741824, ptr %28, align 4
  %29 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 2
  store i32 1073741824, ptr %29, align 4
  %30 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 2
  store i32 3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 4
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6
  store i32 327732, ptr %32, align 4
  %33 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6, i32 1
  store i32 327804, ptr %33, align 4
  %34 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6, i32 2
  store i32 327756, ptr %34, align 4
  %35 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7
  store i32 1073741824, ptr %35, align 4
  %36 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 0, i32 2
  store i32 1073741824, ptr %36, align 4
  %37 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1
  store i32 1610612737, ptr %37, align 4
  %38 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1, i32 1
  store i32 536870913, ptr %38, align 4
  %39 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1, i32 2
  br label %111

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 1
  store i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 3
  store i32 3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 5
  store i32 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8
  store i32 327680, ptr %44, align 4
  %45 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 1
  store i32 327684, ptr %45, align 4
  %46 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 2
  store i32 327804, ptr %46, align 4
  %47 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9
  store i32 1073741824, ptr %47, align 4
  %48 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 1
  store i32 1073741824, ptr %48, align 4
  %49 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 2
  store i32 1073741824, ptr %49, align 4
  %50 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 2
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 4
  store i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6
  store i32 327844, ptr %52, align 4
  %53 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7
  store i32 1073741824, ptr %53, align 4
  %54 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1
  br label %111

55:                                               ; preds = %1
  %56 = getelementptr i8, ptr %0, i32 -72
  %57 = load i32, ptr %56, align 8
  %58 = insertvalue [1 x i32] undef, i32 %57, 0
  %59 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %58) #5
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 1
  store i32 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 3
  store i32 3, ptr %62, align 4
  %63 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 5
  store i32 7, ptr %63, align 4
  %64 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8
  store i32 327684, ptr %64, align 4
  %65 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 1
  store i32 327680, ptr %65, align 4
  %66 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 2
  store i32 327816, ptr %66, align 4
  %67 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9
  store i32 1073741824, ptr %67, align 4
  %68 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 1
  store i32 1073741824, ptr %68, align 4
  %69 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 2
  store i32 1073741824, ptr %69, align 4
  %70 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 2
  store i32 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 4
  store i32 1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6
  store i32 327788, ptr %72, align 4
  %73 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7
  store i32 1073741824, ptr %73, align 4
  %74 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1
  br label %111

75:                                               ; preds = %55
  %76 = load i32, ptr %3, align 4
  %77 = icmp eq i32 %76, 660
  %78 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 1
  store i32 1, ptr %78, align 4
  %79 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 3
  store i32 3, ptr %79, align 4
  %80 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 5
  br i1 %77, label %81, label %93

81:                                               ; preds = %75
  store i32 1, ptr %80, align 4
  %82 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8
  store i32 327684, ptr %82, align 4
  %83 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 1
  store i32 327840, ptr %83, align 4
  %84 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 2
  store i32 327680, ptr %84, align 4
  %85 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9
  store i32 1073741824, ptr %85, align 4
  %86 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 1
  store i32 1073741824, ptr %86, align 4
  %87 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 2
  store i32 1073741824, ptr %87, align 4
  %88 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 2
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 4
  store i32 1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6
  store i32 327792, ptr %90, align 4
  %91 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7
  store i32 1073741824, ptr %91, align 4
  %92 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1
  br label %111

93:                                               ; preds = %75
  store i32 7, ptr %80, align 4
  %94 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8
  store i32 327680, ptr %94, align 4
  %95 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 1
  store i32 327772, ptr %95, align 4
  %96 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 8, i32 2
  store i32 327692, ptr %96, align 4
  %97 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9
  store i32 1073741824, ptr %97, align 4
  %98 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 1
  store i32 1073741824, ptr %98, align 4
  %99 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 9, i32 0, i32 2
  store i32 1073741824, ptr %99, align 4
  %100 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 2
  store i32 3, ptr %100, align 4
  %101 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 4
  store i32 5, ptr %101, align 4
  %102 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6
  store i32 327732, ptr %102, align 4
  %103 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6, i32 1
  store i32 327804, ptr %103, align 4
  %104 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 6, i32 2
  store i32 327756, ptr %104, align 4
  %105 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7
  store i32 1073741824, ptr %105, align 4
  %106 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 0, i32 1
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 0, i32 2
  store i32 1073741824, ptr %107, align 4
  %108 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1
  store i32 1610612737, ptr %108, align 4
  %109 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1, i32 1
  store i32 536870913, ptr %109, align 4
  %110 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %2, i32 0, i32 7, i32 1, i32 2
  br label %111

111:                                              ; preds = %93, %81, %60, %40, %20, %5
  %112 = phi ptr [ %39, %20 ], [ %74, %60 ], [ %110, %93 ], [ %92, %81 ], [ %54, %40 ], [ %19, %5 ]
  store i32 1610612737, ptr %112, align 4
  %113 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2, i32 noundef 640, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %2) #5
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a6xx_hfi_stop(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %3, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %3, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  %13 = load ptr, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %13, %11 ], [ %3, %5 ]
  %16 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %15, i32 0, i32 10
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %17, i32 0, i32 11
  store i32 0, ptr %18, align 4
  %19 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %19, i8 -1, i32 32, i1 false)
  %20 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 5
  store i8 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %14, %1
  %22 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %23, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %23, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1) #5
  %33 = load ptr, ptr %22, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %33, %31 ], [ %23, %25 ]
  %36 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %35, i32 0, i32 10
  store i32 0, ptr %36, align 4
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %37, i32 0, i32 11
  store i32 0, ptr %38, align 4
  %39 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %39, i8 -1, i32 32, i1 false)
  %40 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 5
  store i8 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %34, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a6xx_hfi_init(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 9, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  store i32 0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %3, i32 0, i32 1
  store i32 120, ptr %5, align 4
  %6 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %3, i32 0, i32 2
  store i32 6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %3, i32 0, i32 3
  store i32 12, ptr %7, align 4
  %8 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %3, i32 0, i32 4
  store i32 2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %3, i32 0, i32 5
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 4096
  %13 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 9, i32 3
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 1
  store i32 0, ptr %15, align 4
  store ptr %4, ptr %10, align 4
  %16 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 2
  store ptr %12, ptr %16, align 4
  %17 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 3
  store volatile i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %18, i8 -1, i32 32, i1 false) #5
  %19 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 0, i32 5
  store i8 0, ptr %19, align 4
  %20 = trunc i64 %14 to i32
  %21 = add i32 %20, 4096
  %22 = getelementptr i8, ptr %3, i32 28
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %3, i32 32
  store i32 2560, ptr %23, align 4
  store i32 1, ptr %4, align 4
  %24 = getelementptr i8, ptr %3, i32 36
  store i32 1024, ptr %24, align 4
  %25 = getelementptr i8, ptr %3, i32 40
  store i32 0, ptr %25, align 4
  %26 = getelementptr i8, ptr %3, i32 44
  store i32 0, ptr %26, align 4
  %27 = getelementptr i8, ptr %3, i32 48
  store i32 1, ptr %27, align 4
  %28 = getelementptr i8, ptr %3, i32 52
  store i32 1, ptr %28, align 4
  %29 = getelementptr i8, ptr %3, i32 56
  store i32 1, ptr %29, align 4
  %30 = getelementptr i8, ptr %3, i32 60
  store i32 0, ptr %30, align 4
  %31 = getelementptr i8, ptr %3, i32 64
  store i32 0, ptr %31, align 4
  %32 = getelementptr i8, ptr %3, i32 68
  store i32 0, ptr %32, align 4
  %33 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1
  %34 = getelementptr i8, ptr %3, i32 72
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 8192
  %37 = load i64, ptr %13, align 8
  %38 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 30
  %39 = load i8, ptr %38, align 2, !range !12
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 1
  store i32 0, ptr %41, align 4
  store ptr %34, ptr %33, align 4
  %42 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 2
  store ptr %36, ptr %42, align 4
  %43 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 3
  store volatile i32 0, ptr %43, align 4
  %44 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %44, i8 -1, i32 32, i1 false) #5
  %45 = getelementptr %struct.a6xx_gmu, ptr %0, i32 0, i32 27, i32 1, i32 5
  store i8 0, ptr %45, align 4
  %46 = trunc i64 %37 to i32
  %47 = add i32 %46, 8192
  %48 = getelementptr i8, ptr %3, i32 76
  store i32 %47, ptr %48, align 4
  %49 = select i1 %40, i32 2561, i32 2564
  %50 = getelementptr i8, ptr %3, i32 80
  store i32 %49, ptr %50, align 4
  store i32 1, ptr %34, align 4
  %51 = getelementptr i8, ptr %3, i32 84
  store i32 1024, ptr %51, align 4
  %52 = getelementptr i8, ptr %3, i32 88
  store i32 0, ptr %52, align 4
  %53 = getelementptr i8, ptr %3, i32 92
  store i32 0, ptr %53, align 4
  %54 = getelementptr i8, ptr %3, i32 96
  store i32 1, ptr %54, align 4
  %55 = getelementptr i8, ptr %3, i32 100
  store i32 1, ptr %55, align 4
  %56 = getelementptr i8, ptr %3, i32 104
  store i32 1, ptr %56, align 4
  %57 = getelementptr i8, ptr %3, i32 108
  store i32 0, ptr %57, align 4
  %58 = getelementptr i8, ptr %3, i32 112
  store i32 0, ptr %58, align 4
  %59 = getelementptr i8, ptr %3, i32 116
  store i32 0, ptr %59, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_cmp_rev([1 x i32], [1 x i32]) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2148280331}
!9 = !{i64 681099, i64 2148171070, i64 2148171096, i64 2148171143, i64 2148171165, i64 2148171193, i64 2148171213}
!10 = !{i64 2148183169, i64 2148183201, i64 2148183230, i64 2148183264, i64 2148183295, i64 2148183318}
!11 = !{i64 2148280534}
!12 = !{i8 0, i8 2}
!13 = !{i64 2148849703}
!14 = !{i64 2148845527}
!15 = !{i64 2148845602, i64 2148845629, i64 2148845676, i64 2148845698, i64 2148845726, i64 2148845746}
!16 = !{i64 2148872706}
!17 = !{i64 2427241}
!18 = !{i64 2156368022}
!19 = !{i64 2156368416}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2156365185, i64 2156365686, i64 2156365222, i64 2156365278, i64 2156365312, i64 2156365336, i64 2156365377, i64 2156365398, i64 2156365426, i64 2156365460}
