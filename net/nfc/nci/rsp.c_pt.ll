; ModuleID = '/llk/IR/net/nfc/nci/rsp.c_pt.bc'
source_filename = "../net/nfc/nci/rsp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nci_core_reset_rsp = type { i8, i8, i8 }
%struct.nci_core_init_rsp_1 = type <{ i8, i32, i8, [0 x i8] }>
%struct.nci_core_init_rsp_2 = type <{ i8, i16, i8, i16, i8, i32 }>
%struct.nci_core_init_rsp_nci_ver2 = type <{ i8, i32, i8, i16, i8, i8, i8, i16, i8, [0 x i8] }>
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nci_conn_info = type { %struct.list_head, ptr, i8, i8, i8, %struct.atomic_t, i8, ptr, ptr, ptr }
%struct.nci_core_conn_create_rsp = type { i8, i8, i8, i8 }
%struct.nci_hci_dev = type { i8, ptr, ptr, %struct.nci_hci_init_data, [128 x %struct.nci_hci_pipe], [256 x i8], i32, i32, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head }
%struct.nci_hci_init_data = type { i8, [50 x %struct.nci_hci_gate], [9 x i8] }
%struct.nci_hci_gate = type { i8, i8, i8 }
%struct.nci_hci_pipe = type { i8, i8 }
%struct.nci_nfcee_discover_rsp = type { i8, i8 }

@.str = private unnamed_addr constant [40 x i8] c"\013nci: %s: unsupported rsp opcode 0x%x\0A\00", align 1
@__func__.nci_rsp_packet = private unnamed_addr constant [15 x i8] c"nci_rsp_packet\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013nci: %s: unknown rsp opcode 0x%x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_rsp_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 15
  %7 = zext i8 %6 to i16
  %8 = shl nuw nsw i16 %7, 8
  %9 = getelementptr i8, ptr %4, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 63
  %12 = zext i8 %11 to i16
  %13 = or i16 %8, %12
  %14 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 11
  %15 = tail call i32 @del_timer(ptr noundef %14) #5
  %16 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 3) #5
  %17 = zext i16 %13 to i32
  %18 = icmp eq i8 %6, 15
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = tail call i32 @nci_prop_rsp_packet(ptr noundef %0, i16 noundef zeroext %13, ptr noundef %1) #5
  %21 = icmp eq i32 %20, -524
  br i1 %21, label %22, label %287

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nci_rsp_packet, i32 noundef %17) #6
  br label %287

24:                                               ; preds = %2
  switch i32 %17, label %283 [
    i32 0, label %25
    i32 1, label %41
    i32 2, label %138
    i32 4, label %142
    i32 5, label %195
    i32 256, label %219
    i32 259, label %223
    i32 260, label %246
    i32 262, label %252
    i32 512, label %263
    i32 513, label %279
  ]

25:                                               ; preds = %24
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %285, label %30

30:                                               ; preds = %25
  %31 = load i8, ptr %26, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nci_core_reset_rsp, ptr %26, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 31
  store i8 %35, ptr %36, align 4
  %37 = load i8, ptr %26, align 1
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i8 [ %37, %33 ], [ %31, %30 ]
  %40 = zext i8 %39 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %40) #5
  br label %285

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 31
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, 32
  %45 = icmp eq i8 %44, 0
  %46 = load ptr, ptr %3, align 4
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %45, label %49, label %83

49:                                               ; preds = %41
  br i1 %48, label %50, label %135

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.nci_core_init_rsp_1, ptr %46, i32 0, i32 1
  %52 = load i32, ptr %51, align 1
  %53 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 32
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.nci_core_init_rsp_1, ptr %46, i32 0, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 33
  %57 = tail call i8 @llvm.umin.i8(i8 %55, i8 4) #5
  store i8 %57, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 34
  %59 = getelementptr inbounds %struct.nci_core_init_rsp_1, ptr %46, i32 0, i32 3
  %60 = zext i8 %57 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %58, ptr align 1 %59, i32 %60, i1 false) #5
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr i8, ptr %61, i32 6
  %63 = load i8, ptr %54, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr i8, ptr %62, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 35
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %65, i32 0, i32 1
  %69 = load i16, ptr %68, align 1
  %70 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 36
  store i16 %69, ptr %70, align 2
  %71 = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %65, i32 0, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 37
  store i8 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %65, i32 0, i32 3
  %75 = load i16, ptr %74, align 1
  %76 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 38
  store i16 %75, ptr %76, align 2
  %77 = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %65, i32 0, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 39
  store i8 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %65, i32 0, i32 5
  %81 = load i32, ptr %80, align 1
  %82 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 40
  store i32 %81, ptr %82, align 4
  br label %135

83:                                               ; preds = %41
  br i1 %48, label %84, label %135

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %46, i32 0, i32 1
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 32
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %46, i32 0, i32 8
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 33
  %91 = tail call i8 @llvm.umin.i8(i8 %89, i8 4) #5
  store i8 %91, ptr %90, align 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %124, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %46, i32 0, i32 9
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 34, i32 0
  store i8 %95, ptr %96, align 1
  %97 = icmp eq i8 %91, 1
  br i1 %97, label %124, label %98

98:                                               ; preds = %93
  %99 = getelementptr i8, ptr %94, i32 2
  %100 = getelementptr %struct.nci_core_init_rsp_nci_ver2, ptr %46, i32 1, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = getelementptr i8, ptr %99, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 34, i32 1
  store i8 %104, ptr %105, align 1
  %106 = icmp eq i8 %91, 2
  br i1 %106, label %124, label %107

107:                                              ; preds = %98
  %108 = getelementptr i8, ptr %103, i32 2
  %109 = getelementptr i8, ptr %103, i32 1
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr i8, ptr %108, i32 %111
  %113 = load i8, ptr %112, align 1
  %114 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 34, i32 2
  store i8 %113, ptr %114, align 1
  %115 = icmp eq i8 %91, 3
  br i1 %115, label %124, label %116

116:                                              ; preds = %107
  %117 = getelementptr i8, ptr %112, i32 2
  %118 = getelementptr i8, ptr %112, i32 1
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = getelementptr i8, ptr %117, i32 %120
  %122 = load i8, ptr %121, align 1
  %123 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 34, i32 3
  store i8 %122, ptr %123, align 1
  br label %124

124:                                              ; preds = %116, %107, %98, %93, %84
  %125 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %46, i32 0, i32 2
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 35
  store i8 %126, ptr %127, align 1
  %128 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %46, i32 0, i32 3
  %129 = load i16, ptr %128, align 1
  %130 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 36
  store i16 %129, ptr %130, align 2
  %131 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %46, i32 0, i32 4
  %132 = load i8, ptr %131, align 1
  %133 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 37
  store i8 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 38
  store i16 15, ptr %134, align 2
  br label %135

135:                                              ; preds = %124, %83, %50, %49
  %136 = phi i8 [ %47, %49 ], [ 0, %50 ], [ 0, %124 ], [ %47, %83 ]
  %137 = zext i8 %136 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %137) #5
  br label %285

138:                                              ; preds = %24
  %139 = load ptr, ptr %3, align 4
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %141) #5
  br label %285

142:                                              ; preds = %24
  %143 = load ptr, ptr %3, align 4
  %144 = load i8, ptr %143, align 1
  switch i8 %144, label %192 [
    i8 0, label %145
    i8 1, label %188
  ]

145:                                              ; preds = %142
  %146 = load ptr, ptr %0, align 4
  %147 = getelementptr inbounds %struct.nfc_dev, ptr %146, i32 0, i32 5
  %148 = tail call noalias ptr @devm_kmalloc(ptr noundef %147, i32 noundef 36, i32 noundef 3520) #5
  %149 = icmp eq ptr %148, null
  br i1 %149, label %192, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %0, align 4
  %152 = getelementptr inbounds %struct.nfc_dev, ptr %151, i32 0, i32 5
  %153 = tail call noalias ptr @devm_kmalloc(ptr noundef %152, i32 noundef 2, i32 noundef 3520) #5
  %154 = getelementptr inbounds %struct.nci_conn_info, ptr %148, i32 0, i32 1
  store ptr %153, ptr %154, align 4
  %155 = icmp eq ptr %153, null
  br i1 %155, label %188, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 42
  %158 = load i8, ptr %157, align 2
  %159 = getelementptr inbounds %struct.nci_conn_info, ptr %148, i32 0, i32 2
  store i8 %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 41
  %161 = load i8, ptr %160, align 4
  store i8 %161, ptr %153, align 1
  %162 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 41, i32 1
  %163 = load i8, ptr %162, align 1
  %164 = getelementptr inbounds %struct.dest_spec_params, ptr %153, i32 0, i32 1
  store i8 %163, ptr %164, align 1
  %165 = getelementptr inbounds %struct.nci_core_conn_create_rsp, ptr %143, i32 0, i32 3
  %166 = load i8, ptr %165, align 1
  %167 = getelementptr inbounds %struct.nci_conn_info, ptr %148, i32 0, i32 3
  store i8 %166, ptr %167, align 1
  store volatile ptr %148, ptr %148, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %169 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  store ptr %148, ptr %171, align 4
  store ptr %170, ptr %148, align 4
  store ptr %169, ptr %168, align 4
  store volatile ptr %148, ptr %169, align 4
  %172 = load i8, ptr %160, align 4
  %173 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = load i8, ptr %174, align 4
  %176 = icmp eq i8 %172, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %156
  %178 = getelementptr inbounds %struct.nci_hci_dev, ptr %174, i32 0, i32 2
  store ptr %148, ptr %178, align 4
  br label %179

179:                                              ; preds = %177, %156
  %180 = load i8, ptr %165, align 1
  store i8 %180, ptr %167, align 1
  %181 = getelementptr inbounds %struct.nci_core_conn_create_rsp, ptr %143, i32 0, i32 1
  %182 = load i8, ptr %181, align 1
  %183 = getelementptr inbounds %struct.nci_conn_info, ptr %148, i32 0, i32 4
  store i8 %182, ptr %183, align 2
  %184 = getelementptr inbounds %struct.nci_conn_info, ptr %148, i32 0, i32 5
  %185 = getelementptr inbounds %struct.nci_core_conn_create_rsp, ptr %143, i32 0, i32 2
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  store volatile i32 %187, ptr %184, align 4
  br label %192

188:                                              ; preds = %150, %142
  %189 = phi ptr [ %148, %150 ], [ null, %142 ]
  %190 = load ptr, ptr %0, align 4
  %191 = getelementptr inbounds %struct.nfc_dev, ptr %190, i32 0, i32 5
  tail call void @devm_kfree(ptr noundef %191, ptr noundef %189) #5
  br label %192

192:                                              ; preds = %188, %179, %145, %142
  %193 = phi i8 [ 1, %188 ], [ 1, %145 ], [ 0, %179 ], [ %144, %142 ]
  %194 = zext i8 %193 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %194) #5
  br label %285

195:                                              ; preds = %24
  %196 = load ptr, ptr %3, align 4
  %197 = load i8, ptr %196, align 1
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 8
  %201 = load i8, ptr %200, align 4
  %202 = zext i8 %201 to i32
  %203 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %0, i32 noundef %202) #5
  %204 = icmp eq ptr %203, null
  br i1 %204, label %217, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = load ptr, ptr %203, align 4
  %209 = getelementptr inbounds %struct.list_head, ptr %208, i32 0, i32 1
  store ptr %207, ptr %209, align 4
  store volatile ptr %208, ptr %207, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %203, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %206, align 4
  %210 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 10
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %203, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  store ptr null, ptr %210, align 4
  br label %214

214:                                              ; preds = %213, %205
  %215 = load ptr, ptr %0, align 4
  %216 = getelementptr inbounds %struct.nfc_dev, ptr %215, i32 0, i32 5
  tail call void @devm_kfree(ptr noundef %216, ptr noundef nonnull %203) #5
  br label %217

217:                                              ; preds = %214, %199, %195
  %218 = zext i8 %197 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %218) #5
  br label %285

219:                                              ; preds = %24
  %220 = load ptr, ptr %3, align 4
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %222) #5
  br label %285

223:                                              ; preds = %24
  %224 = load ptr, ptr %3, align 4
  %225 = load i8, ptr %224, align 1
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  store volatile i32 1, ptr %228, align 4
  %229 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 10
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = load ptr, ptr %0, align 4
  %234 = getelementptr inbounds %struct.nfc_dev, ptr %233, i32 0, i32 5
  %235 = tail call noalias ptr @devm_kmalloc(ptr noundef %234, i32 noundef 36, i32 noundef 3520) #5
  %236 = icmp eq ptr %235, null
  br i1 %236, label %243, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.nci_conn_info, ptr %235, i32 0, i32 3
  store i8 0, ptr %238, align 1
  store volatile ptr %235, ptr %235, align 4
  %239 = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  %240 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  store ptr %235, ptr %242, align 4
  store ptr %241, ptr %235, align 4
  store ptr %240, ptr %239, align 4
  store volatile ptr %235, ptr %240, align 4
  store ptr %235, ptr %229, align 4
  br label %243

243:                                              ; preds = %237, %232, %227, %223
  %244 = phi i8 [ 0, %227 ], [ 0, %237 ], [ %225, %223 ], [ 1, %232 ]
  %245 = zext i8 %244 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %245) #5
  br label %285

246:                                              ; preds = %24
  %247 = load ptr, ptr %3, align 4
  %248 = load i8, ptr %247, align 1
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %285, label %250

250:                                              ; preds = %246
  %251 = zext i8 %248 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %251) #5
  br label %285

252:                                              ; preds = %24
  %253 = load ptr, ptr %3, align 4
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i8 %254, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  %259 = load volatile i32, ptr %258, align 4
  %260 = icmp eq i32 %259, 4
  br i1 %260, label %285, label %261

261:                                              ; preds = %257, %252
  tail call void @nci_clear_target_list(ptr noundef %0) #5
  %262 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  store volatile i32 0, ptr %262, align 4
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %255) #5
  br label %285

263:                                              ; preds = %24
  %264 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %265 = load i32, ptr %264, align 8
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %267, label %277

267:                                              ; preds = %263
  %268 = load ptr, ptr %3, align 4
  %269 = load i8, ptr %268, align 1
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.nci_nfcee_discover_rsp, ptr %268, i32 0, i32 1
  %273 = load i8, ptr %272, align 1
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %271, %267
  %276 = zext i8 %269 to i32
  br label %277

277:                                              ; preds = %275, %263
  %278 = phi i32 [ %276, %275 ], [ 194, %263 ]
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %278) #5
  br label %285

279:                                              ; preds = %24
  %280 = load ptr, ptr %3, align 4
  %281 = load i8, ptr %280, align 1
  %282 = zext i8 %281 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %282) #5
  br label %285

283:                                              ; preds = %24
  %284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nci_rsp_packet, i32 noundef %17) #6
  br label %285

285:                                              ; preds = %283, %279, %277, %271, %261, %257, %250, %246, %243, %219, %217, %192, %138, %135, %38, %25
  %286 = tail call i32 @nci_core_rsp_packet(ptr noundef %0, i16 noundef zeroext %13, ptr noundef %1) #5
  br label %287

287:                                              ; preds = %285, %22, %19
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #5
  %288 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 7
  store volatile i32 1, ptr %288, align 4
  %289 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 19
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, %289
  br i1 %291, label %297, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 13
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 14
  %296 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %294, ptr noundef %295) #5
  br label %297

297:                                              ; preds = %292, %287
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_rsp_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_rsp_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_get_conn_info_by_conn_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_clear_target_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
