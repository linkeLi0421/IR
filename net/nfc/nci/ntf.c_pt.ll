; ModuleID = '/llk/IR/net/nfc/nci/ntf.c_pt.bc'
source_filename = "../net/nfc/nci/ntf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.atomic_t = type { i32 }
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
%struct.nci_rf_intf_activated_ntf = type { i8, i8, i8, i8, i8, i8, i8, %union.anon.139, i8, i8, i8, i8, %union.anon.140 }
%union.anon.139 = type { %struct.rf_tech_specific_params_nfcf_poll }
%struct.rf_tech_specific_params_nfcf_poll = type { i8, i8, [18 x i8] }
%union.anon.140 = type { %struct.activation_params_poll_nfc_dep }
%struct.activation_params_poll_nfc_dep = type { i8, [62 x i8] }
%struct.nci_rf_discover_ntf = type { i8, i8, i8, i8, %union.anon.138, i8 }
%union.anon.138 = type { %struct.rf_tech_specific_params_nfcf_poll }
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
%struct.nci_core_reset_ntf = type <{ i8, i8, i8, i8, i8, i32 }>
%struct.nci_core_conn_credit_ntf = type { i8, [10 x %struct.conn_credit_entry] }
%struct.conn_credit_entry = type { i8, i8 }
%struct.nci_conn_info = type { %struct.list_head, ptr, i8, i8, i8, %struct.atomic_t, i8, ptr, ptr, ptr }
%struct.nci_core_intf_error_ntf = type { i8, i8 }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.rf_tech_specific_params_nfca_poll = type <{ i16, i8, [10 x i8], i8, i8 }>
%struct.rf_tech_specific_params_nfcb_poll = type { i8, [12 x i8] }
%struct.rf_tech_specific_params_nfcv_poll = type { i8, i8, [8 x i8] }

@.str = private unnamed_addr constant [40 x i8] c"\013nci: %s: unsupported ntf opcode 0x%x\0A\00", align 1
@__func__.nci_ntf_packet = private unnamed_addr constant [15 x i8] c"nci_ntf_packet\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013nci: %s: unknown ntf opcode 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\013nci: %s: unsupported rf_tech_and_mode 0x%x\0A\00", align 1
@__func__.nci_rf_discover_ntf_packet = private unnamed_addr constant [27 x i8] c"nci_rf_discover_ntf_packet\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"\013nci: %s: the target found does not have the desired protocol\0A\00", align 1
@__func__.nci_add_new_protocol = private unnamed_addr constant [21 x i8] c"nci_add_new_protocol\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"\013nci: %s: unsupported activation_rf_tech_and_mode 0x%x\0A\00", align 1
@__func__.nci_rf_intf_activated_ntf_packet = private unnamed_addr constant [33 x i8] c"nci_rf_intf_activated_ntf_packet\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\013nci: %s: unsupported rf_interface 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\013nci: %s: unable to store general bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\013nci: %s: error when signaling tm activation\0A\00", align 1
@__func__.nci_extract_activation_params_iso_dep = private unnamed_addr constant [38 x i8] c"nci_extract_activation_params_iso_dep\00", align 1
@__func__.nci_extract_activation_params_nfc_dep = private unnamed_addr constant [38 x i8] c"nci_extract_activation_params_nfc_dep\00", align 1
@__func__.nci_store_general_bytes_nfc_dep = private unnamed_addr constant [32 x i8] c"nci_store_general_bytes_nfc_dep\00", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nci_clear_target_list(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 29
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(764) %2, i8 0, i64 764, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_ntf_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.nci_rf_intf_activated_ntf, align 1
  %4 = alloca %struct.nci_rf_discover_ntf, align 1
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 15
  %9 = zext i8 %8 to i16
  %10 = shl nuw nsw i16 %9, 8
  %11 = getelementptr i8, ptr %6, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 63
  %14 = zext i8 %13 to i16
  %15 = or i16 %10, %14
  %16 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 3) #8
  %17 = zext i16 %15 to i32
  %18 = icmp eq i8 %8, 15
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = tail call i32 @nci_prop_ntf_packet(ptr noundef %0, i16 noundef zeroext %15, ptr noundef %1) #8
  %21 = icmp eq i32 %20, -524
  br i1 %21, label %22, label %454

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nci_ntf_packet, i32 noundef %17) #9
  br label %454

24:                                               ; preds = %2
  switch i32 %17, label %450 [
    i32 0, label %25
    i32 6, label %36
    i32 7, label %71
    i32 8, label %79
    i32 259, label %89
    i32 261, label %198
    i32 262, label %416
    i32 512, label %443
    i32 265, label %452
  ]

25:                                               ; preds = %24
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.nci_core_reset_ntf, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 31
  store i8 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nci_core_reset_ntf, ptr %26, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 39
  store i8 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nci_core_reset_ntf, ptr %26, i32 0, i32 5
  %34 = load i32, ptr %33, align 1
  %35 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 40
  store i32 %34, ptr %35, align 4
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef 0) #8
  br label %452

36:                                               ; preds = %24
  %37 = load ptr, ptr %5, align 4
  %38 = load i8, ptr %37, align 1
  %39 = icmp ugt i8 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 10, ptr %37, align 1
  br label %43

41:                                               ; preds = %36
  %42 = icmp eq i8 %38, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %41, %40
  br label %44

44:                                               ; preds = %52, %43
  %45 = phi i32 [ %58, %52 ], [ 0, %43 ]
  %46 = getelementptr %struct.nci_core_conn_credit_ntf, ptr %37, i32 0, i32 1, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 15
  store i8 %48, ptr %46, align 1
  %49 = zext i8 %48 to i32
  %50 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %0, i32 noundef %49) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %452, label %52

52:                                               ; preds = %44
  %53 = getelementptr %struct.nci_core_conn_credit_ntf, ptr %37, i32 0, i32 1, i32 %45, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.nci_conn_info, ptr %50, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #8, !srcloc !8
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 %55, ptr elementtype(i32) %56) #8, !srcloc !9
  %58 = add nuw nsw i32 %45, 1
  %59 = load i8, ptr %37, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %44, label %62

62:                                               ; preds = %52, %41
  %63 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %452, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 18
  %70 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %68, ptr noundef %69) #8
  br label %452

71:                                               ; preds = %24
  %72 = load ptr, ptr %5, align 4
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  %75 = load volatile i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %452

77:                                               ; preds = %71
  %78 = zext i8 %73 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %78) #8
  br label %452

79:                                               ; preds = %24
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.nci_core_intf_error_ntf, ptr %80, i32 0, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = and i8 %82, 15
  store i8 %83, ptr %81, align 1
  %84 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %452, label %88

88:                                               ; preds = %79
  tail call void @nci_data_exchange_complete(ptr noundef %0, ptr noundef null, i8 noundef zeroext %83, i32 noundef -5) #8
  br label %452

89:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %4, i8 0, i32 25, i1 false) #8, !annotation !10
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr i8, ptr %90, i32 1
  %92 = load i8, ptr %90, align 1
  store i8 %92, ptr %4, align 1
  %93 = getelementptr i8, ptr %90, i32 2
  %94 = load i8, ptr %91, align 1
  %95 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 1
  store i8 %94, ptr %95, align 1
  %96 = getelementptr i8, ptr %90, i32 3
  %97 = load i8, ptr %93, align 1
  %98 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 2
  store i8 %97, ptr %98, align 1
  %99 = getelementptr i8, ptr %90, i32 4
  %100 = load i8, ptr %96, align 1
  %101 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 3
  store i8 %100, ptr %101, align 1
  %102 = icmp eq i8 %100, 0
  br i1 %102, label %156, label %103

103:                                              ; preds = %89
  switch i8 %97, label %150 [
    i8 0, label %104
    i8 1, label %123
    i8 2, label %131
    i8 6, label %142
  ]

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4
  %106 = load i16, ptr %99, align 2
  store i16 %106, ptr %105, align 1
  %107 = getelementptr i8, ptr %90, i32 6
  %108 = getelementptr i8, ptr %90, i32 7
  %109 = load i8, ptr %107, align 1
  %110 = tail call i8 @llvm.umin.i8(i8 %109, i8 10) #8
  %111 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 2
  store i8 %110, ptr %111, align 1
  %112 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 2, i32 1
  %113 = zext i8 %110 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %112, ptr align 1 %108, i32 %113, i1 false) #8
  %114 = getelementptr i8, ptr %108, i32 %113
  %115 = getelementptr i8, ptr %114, i32 1
  %116 = load i8, ptr %114, align 1
  %117 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 2, i32 11
  store i8 %116, ptr %117, align 1
  %118 = icmp eq i8 %116, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %104
  %120 = getelementptr i8, ptr %115, i32 1
  %121 = load i8, ptr %115, align 1
  %122 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 2, i32 12
  store i8 %121, ptr %122, align 1
  br label %156

123:                                              ; preds = %103
  %124 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4
  %125 = getelementptr i8, ptr %90, i32 5
  %126 = load i8, ptr %99, align 1
  %127 = tail call i8 @llvm.umin.i8(i8 %126, i8 12) #8
  store i8 %127, ptr %124, align 1
  %128 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 1
  %129 = zext i8 %127 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %128, ptr align 1 %125, i32 %129, i1 false) #8
  %130 = getelementptr i8, ptr %125, i32 %129
  br label %156

131:                                              ; preds = %103
  %132 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4
  %133 = getelementptr i8, ptr %90, i32 5
  %134 = load i8, ptr %99, align 1
  store i8 %134, ptr %132, align 1
  %135 = getelementptr i8, ptr %90, i32 6
  %136 = load i8, ptr %133, align 1
  %137 = tail call i8 @llvm.umin.i8(i8 %136, i8 18) #8
  %138 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 1
  store i8 %137, ptr %138, align 1
  %139 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 2
  %140 = zext i8 %137 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %139, ptr align 1 %135, i32 %140, i1 false) #8
  %141 = getelementptr i8, ptr %135, i32 %140
  br label %156

142:                                              ; preds = %103
  %143 = getelementptr i8, ptr %90, i32 5
  %144 = getelementptr i8, ptr %90, i32 6
  %145 = load i8, ptr %143, align 1
  %146 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 1
  store i8 %145, ptr %146, align 1
  %147 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4, i32 0, i32 2
  %148 = load i64, ptr %144, align 1
  store i64 %148, ptr %147, align 1
  %149 = getelementptr i8, ptr %90, i32 14
  br label %156

150:                                              ; preds = %103
  %151 = zext i8 %97 to i32
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nci_rf_discover_ntf_packet, i32 noundef %151) #9
  %153 = zext i8 %100 to i32
  %154 = getelementptr i8, ptr %99, i32 %153
  %155 = load i8, ptr %154, align 1
  br label %186

156:                                              ; preds = %142, %131, %123, %119, %104, %89
  %157 = phi ptr [ %115, %104 ], [ %120, %119 ], [ %99, %89 ], [ %130, %123 ], [ %141, %131 ], [ %149, %142 ]
  %158 = load i8, ptr %157, align 1
  %159 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 5
  store i8 %158, ptr %159, align 1
  %160 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 30
  %161 = load i32, ptr %160, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %172, %156
  %164 = phi i32 [ %173, %172 ], [ 0, %156 ]
  %165 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 29, i32 %164, i32 13
  %166 = load i8, ptr %165, align 4
  %167 = icmp eq i8 %166, %92
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 29, i32 %164
  %170 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4
  %171 = call fastcc i32 @nci_add_new_protocol(ptr noundef %0, ptr noundef %169, i8 noundef zeroext %94, i8 noundef zeroext %97, ptr noundef %170) #8
  br label %186

172:                                              ; preds = %163
  %173 = add nuw nsw i32 %164, 1
  %174 = icmp eq i32 %173, %161
  br i1 %174, label %175, label %163

175:                                              ; preds = %172
  %176 = icmp eq i32 %161, 10
  br i1 %176, label %186, label %177

177:                                              ; preds = %175, %156
  %178 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 29, i32 %161
  %179 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %4, i32 0, i32 4
  %180 = call fastcc i32 @nci_add_new_protocol(ptr noundef %0, ptr noundef %178, i8 noundef zeroext %94, i8 noundef zeroext %97, ptr noundef %179) #8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 29, i32 %161, i32 13
  store i8 %92, ptr %183, align 4
  %184 = load i32, ptr %160, align 4
  %185 = add i32 %184, 1
  store i32 %185, ptr %160, align 4
  br label %186

186:                                              ; preds = %182, %177, %175, %168, %150
  %187 = phi i8 [ %155, %150 ], [ %158, %168 ], [ %158, %175 ], [ %158, %177 ], [ %158, %182 ]
  %188 = icmp eq i8 %187, 2
  %189 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  br i1 %188, label %190, label %191

190:                                              ; preds = %186
  store volatile i32 2, ptr %189, align 4
  br label %197

191:                                              ; preds = %186
  store volatile i32 3, ptr %189, align 4
  %192 = load ptr, ptr %0, align 4
  %193 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 29
  %194 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 30
  %195 = load i32, ptr %194, align 4
  %196 = tail call i32 @nfc_targets_found(ptr noundef %192, ptr noundef %193, i32 noundef %195) #8
  br label %197

197:                                              ; preds = %191, %190
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %4) #8
  br label %452

198:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 94, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(94) %3, i8 0, i32 94, i1 false) #8, !annotation !10
  %199 = load ptr, ptr %5, align 4
  %200 = getelementptr i8, ptr %199, i32 1
  %201 = load i8, ptr %199, align 1
  store i8 %201, ptr %3, align 1
  %202 = getelementptr i8, ptr %199, i32 2
  %203 = load i8, ptr %200, align 1
  %204 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 1
  store i8 %203, ptr %204, align 1
  %205 = getelementptr i8, ptr %199, i32 3
  %206 = load i8, ptr %202, align 1
  %207 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 2
  store i8 %206, ptr %207, align 1
  %208 = getelementptr i8, ptr %199, i32 4
  %209 = load i8, ptr %205, align 1
  %210 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 3
  store i8 %209, ptr %210, align 1
  %211 = getelementptr i8, ptr %199, i32 5
  %212 = load i8, ptr %208, align 1
  %213 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 4
  store i8 %212, ptr %213, align 1
  %214 = getelementptr i8, ptr %199, i32 6
  %215 = load i8, ptr %211, align 1
  %216 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 5
  store i8 %215, ptr %216, align 1
  %217 = getelementptr i8, ptr %199, i32 7
  %218 = load i8, ptr %214, align 1
  %219 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 6
  store i8 %218, ptr %219, align 1
  %220 = icmp eq i8 %203, 0
  br i1 %220, label %399, label %221

221:                                              ; preds = %198
  %222 = icmp eq i8 %218, 0
  br i1 %222, label %281, label %223

223:                                              ; preds = %221
  switch i8 %209, label %278 [
    i8 0, label %224
    i8 1, label %243
    i8 2, label %251
    i8 6, label %262
    i8 -128, label %281
    i8 -126, label %270
  ]

224:                                              ; preds = %223
  %225 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7
  %226 = load i16, ptr %217, align 2
  store i16 %226, ptr %225, align 1
  %227 = getelementptr i8, ptr %199, i32 9
  %228 = getelementptr i8, ptr %199, i32 10
  %229 = load i8, ptr %227, align 1
  %230 = tail call i8 @llvm.umin.i8(i8 %229, i8 10) #8
  %231 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 2
  store i8 %230, ptr %231, align 1
  %232 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 1
  %233 = zext i8 %230 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %232, ptr align 1 %228, i32 %233, i1 false) #8
  %234 = getelementptr i8, ptr %228, i32 %233
  %235 = getelementptr i8, ptr %234, i32 1
  %236 = load i8, ptr %234, align 1
  %237 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 11
  store i8 %236, ptr %237, align 1
  %238 = icmp eq i8 %236, 0
  br i1 %238, label %281, label %239

239:                                              ; preds = %224
  %240 = getelementptr i8, ptr %235, i32 1
  %241 = load i8, ptr %235, align 1
  %242 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 12
  store i8 %241, ptr %242, align 1
  br label %281

243:                                              ; preds = %223
  %244 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7
  %245 = getelementptr i8, ptr %199, i32 8
  %246 = load i8, ptr %217, align 1
  %247 = tail call i8 @llvm.umin.i8(i8 %246, i8 12) #8
  store i8 %247, ptr %244, align 1
  %248 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 1
  %249 = zext i8 %247 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %248, ptr align 1 %245, i32 %249, i1 false) #8
  %250 = getelementptr i8, ptr %245, i32 %249
  br label %281

251:                                              ; preds = %223
  %252 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7
  %253 = getelementptr i8, ptr %199, i32 8
  %254 = load i8, ptr %217, align 1
  store i8 %254, ptr %252, align 1
  %255 = getelementptr i8, ptr %199, i32 9
  %256 = load i8, ptr %253, align 1
  %257 = tail call i8 @llvm.umin.i8(i8 %256, i8 18) #8
  %258 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 1
  store i8 %257, ptr %258, align 1
  %259 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 2
  %260 = zext i8 %257 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %259, ptr align 1 %255, i32 %260, i1 false) #8
  %261 = getelementptr i8, ptr %255, i32 %260
  br label %281

262:                                              ; preds = %223
  %263 = getelementptr i8, ptr %199, i32 8
  %264 = getelementptr i8, ptr %199, i32 9
  %265 = load i8, ptr %263, align 1
  %266 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 1
  store i8 %265, ptr %266, align 1
  %267 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 2
  %268 = load i64, ptr %264, align 1
  store i64 %268, ptr %267, align 1
  %269 = getelementptr i8, ptr %199, i32 17
  br label %281

270:                                              ; preds = %223
  %271 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7
  %272 = getelementptr i8, ptr %199, i32 8
  %273 = load i8, ptr %217, align 1
  %274 = tail call i8 @llvm.umin.i8(i8 %273, i8 8) #8
  store i8 %274, ptr %271, align 1
  %275 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7, i32 0, i32 1
  %276 = zext i8 %274 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %275, ptr align 1 %272, i32 %276, i1 false) #8
  %277 = getelementptr i8, ptr %272, i32 %276
  br label %281

278:                                              ; preds = %223
  %279 = zext i8 %209 to i32
  %280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.nci_rf_intf_activated_ntf_packet, i32 noundef %279) #9
  br label %360

281:                                              ; preds = %270, %262, %251, %243, %239, %224, %223, %221
  %282 = phi ptr [ %277, %270 ], [ %217, %223 ], [ %269, %262 ], [ %261, %251 ], [ %250, %243 ], [ %217, %221 ], [ %240, %239 ], [ %235, %224 ]
  %283 = getelementptr i8, ptr %282, i32 1
  %284 = load i8, ptr %282, align 1
  %285 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 8
  store i8 %284, ptr %285, align 1
  %286 = getelementptr i8, ptr %282, i32 2
  %287 = load i8, ptr %283, align 1
  %288 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 9
  store i8 %287, ptr %288, align 1
  %289 = getelementptr i8, ptr %282, i32 3
  %290 = load i8, ptr %286, align 1
  %291 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 10
  store i8 %290, ptr %291, align 1
  %292 = getelementptr i8, ptr %282, i32 4
  %293 = load i8, ptr %289, align 1
  %294 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 11
  store i8 %293, ptr %294, align 1
  %295 = icmp eq i8 %293, 0
  br i1 %295, label %333, label %296

296:                                              ; preds = %281
  switch i8 %203, label %325 [
    i8 2, label %297
    i8 3, label %311
    i8 1, label %333
  ]

297:                                              ; preds = %296
  switch i8 %209, label %308 [
    i8 0, label %298
    i8 1, label %303
  ]

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12
  %300 = load i8, ptr %292, align 1
  %301 = tail call i8 @llvm.umin.i8(i8 %300, i8 20) #8
  store i8 %301, ptr %299, align 1
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %333, label %328

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12
  %305 = load i8, ptr %292, align 1
  %306 = tail call i8 @llvm.umin.i8(i8 %305, i8 50) #8
  store i8 %306, ptr %304, align 1
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %333, label %328

308:                                              ; preds = %297
  %309 = zext i8 %209 to i32
  %310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.nci_extract_activation_params_iso_dep, i32 noundef %309) #9
  br label %360

311:                                              ; preds = %296
  switch i8 %209, label %322 [
    i8 0, label %312
    i8 2, label %312
    i8 -128, label %317
    i8 -126, label %317
  ]

312:                                              ; preds = %311, %311
  %313 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12
  %314 = load i8, ptr %292, align 1
  %315 = tail call i8 @llvm.umin.i8(i8 %314, i8 62) #8
  store i8 %315, ptr %313, align 1
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %333, label %328

317:                                              ; preds = %311, %311
  %318 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12
  %319 = load i8, ptr %292, align 1
  %320 = tail call i8 @llvm.umin.i8(i8 %319, i8 62) #8
  store i8 %320, ptr %318, align 1
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %333, label %328

322:                                              ; preds = %311
  %323 = zext i8 %209 to i32
  %324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.nci_extract_activation_params_nfc_dep, i32 noundef %323) #9
  br label %360

325:                                              ; preds = %296
  %326 = zext i8 %203 to i32
  %327 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.nci_rf_intf_activated_ntf_packet, i32 noundef %326) #9
  br label %360

328:                                              ; preds = %317, %312, %303, %298
  %329 = phi i8 [ %301, %298 ], [ %306, %303 ], [ %315, %312 ], [ %320, %317 ]
  %330 = zext i8 %329 to i32
  %331 = getelementptr i8, ptr %282, i32 5
  %332 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %332, ptr align 1 %331, i32 %330, i1 false) #8
  br label %333

333:                                              ; preds = %328, %317, %312, %303, %298, %296, %281
  %334 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 10
  %335 = load ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, null
  br i1 %336, label %415, label %337

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.nci_conn_info, ptr %335, i32 0, i32 4
  store i8 %212, ptr %338, align 2
  %339 = getelementptr inbounds %struct.nci_conn_info, ptr %335, i32 0, i32 6
  store i8 %215, ptr %339, align 4
  %340 = getelementptr inbounds %struct.nci_conn_info, ptr %335, i32 0, i32 5
  %341 = zext i8 %215 to i32
  store volatile i32 %341, ptr %340, align 4
  %342 = icmp eq i8 %203, 3
  br i1 %342, label %343, label %360

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 45
  store i8 0, ptr %344, align 4
  %345 = load i8, ptr %294, align 1
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %360, label %347

347:                                              ; preds = %343
  switch i8 %209, label %356 [
    i8 0, label %368
    i8 2, label %368
    i8 -128, label %348
    i8 -126, label %348
  ]

348:                                              ; preds = %347, %347
  %349 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12
  %350 = load i8, ptr %349, align 1
  %351 = add i8 %350, -14
  %352 = tail call i8 @llvm.umin.i8(i8 %351, i8 48) #8
  store i8 %352, ptr %344, align 4
  %353 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 44
  %354 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12, i32 0, i32 1, i32 14
  %355 = zext i8 %352 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %353, ptr align 1 %354, i32 %355, i1 false) #8
  br label %399

356:                                              ; preds = %347
  %357 = zext i8 %209 to i32
  %358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.nci_store_general_bytes_nfc_dep, i32 noundef %357) #9
  %359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.nci_rf_intf_activated_ntf_packet) #9
  br label %360

360:                                              ; preds = %356, %343, %337, %325, %322, %308, %278
  %361 = phi i1 [ true, %343 ], [ false, %278 ], [ false, %325 ], [ false, %308 ], [ false, %322 ], [ true, %337 ], [ false, %356 ]
  %362 = phi i32 [ 0, %343 ], [ 177, %278 ], [ 177, %325 ], [ 177, %308 ], [ 177, %322 ], [ 0, %337 ], [ 177, %356 ]
  %363 = icmp sgt i8 %209, -1
  br i1 %363, label %364, label %399

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  %366 = load volatile i32, ptr %365, align 4
  %367 = icmp eq i32 %366, 1
  br i1 %367, label %380, label %396

368:                                              ; preds = %347, %347
  %369 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12
  %370 = load i8, ptr %369, align 1
  %371 = add i8 %370, -15
  %372 = tail call i8 @llvm.umin.i8(i8 %371, i8 47) #8
  store i8 %372, ptr %344, align 4
  %373 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 44
  %374 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 12, i32 0, i32 1, i32 15
  %375 = zext i8 %372 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %373, ptr align 1 %374, i32 %375, i1 false) #8
  %376 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  %377 = load volatile i32, ptr %376, align 4
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %396

379:                                              ; preds = %368
  store volatile i32 4, ptr %376, align 4
  br label %381

380:                                              ; preds = %364
  store volatile i32 4, ptr %365, align 4
  br i1 %361, label %381, label %415

381:                                              ; preds = %380, %379
  %382 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 30
  %383 = load i32, ptr %382, align 4
  %384 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 29, i32 %383
  %385 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %3, i32 0, i32 7
  %386 = call fastcc i32 @nci_add_new_protocol(ptr noundef %0, ptr noundef %384, i8 noundef zeroext %206, i8 noundef zeroext %209, ptr noundef %385) #8
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %415

388:                                              ; preds = %381
  %389 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 29
  %390 = load i8, ptr %3, align 1
  %391 = getelementptr %struct.nci_dev, ptr %0, i32 0, i32 29, i32 %383, i32 13
  store i8 %390, ptr %391, align 4
  %392 = load i32, ptr %382, align 4
  %393 = add i32 %392, 1
  store i32 %393, ptr %382, align 4
  %394 = load ptr, ptr %0, align 4
  %395 = tail call i32 @nfc_targets_found(ptr noundef %394, ptr noundef %389, i32 noundef %393) #8
  br label %415

396:                                              ; preds = %368, %364
  %397 = phi ptr [ %376, %368 ], [ %365, %364 ]
  %398 = phi i32 [ 0, %368 ], [ %362, %364 ]
  store volatile i32 4, ptr %397, align 4
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %398) #8
  br label %415

399:                                              ; preds = %360, %348, %198
  %400 = phi i32 [ 0, %198 ], [ %362, %360 ], [ 0, %348 ]
  %401 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  store volatile i32 5, ptr %401, align 4
  %402 = icmp eq i32 %400, 0
  %403 = icmp eq i8 %206, 5
  %404 = select i1 %402, i1 %403, i1 false
  br i1 %404, label %405, label %415

405:                                              ; preds = %399
  %406 = load ptr, ptr %0, align 4
  %407 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 44
  %408 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 45
  %409 = load i8, ptr %408, align 4
  %410 = zext i8 %409 to i32
  %411 = tail call i32 @nfc_tm_activated(ptr noundef %406, i32 noundef 32, i8 noundef zeroext 1, ptr noundef %407, i32 noundef %410) #8
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %405
  %414 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.nci_rf_intf_activated_ntf_packet) #9
  br label %415

415:                                              ; preds = %413, %405, %399, %396, %388, %381, %380, %333
  call void @llvm.lifetime.end.p0(i64 94, ptr nonnull %3) #8
  br label %452

416:                                              ; preds = %24
  %417 = load ptr, ptr %5, align 4
  %418 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 10
  %419 = load ptr, ptr %418, align 4
  %420 = icmp eq ptr %419, null
  br i1 %420, label %452, label %421

421:                                              ; preds = %416
  %422 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21
  tail call void @skb_queue_purge(ptr noundef %422) #8
  %423 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 43
  %424 = load ptr, ptr %423, align 4
  %425 = icmp eq ptr %424, null
  br i1 %425, label %427, label %426

426:                                              ; preds = %421
  tail call void @kfree_skb_reason(ptr noundef nonnull %424, i32 noundef 0) #8
  store ptr null, ptr %423, align 4
  br label %427

427:                                              ; preds = %426, %421
  %428 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  %429 = load volatile i32, ptr %428, align 4
  %430 = and i32 %429, 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %433, label %432

432:                                              ; preds = %427
  tail call void @nci_data_exchange_complete(ptr noundef %0, ptr noundef null, i8 noundef zeroext 0, i32 noundef -5) #8
  br label %433

433:                                              ; preds = %432, %427
  %434 = load i8, ptr %417, align 1
  switch i8 %434, label %442 [
    i8 0, label %436
    i8 1, label %439
    i8 2, label %439
    i8 3, label %435
  ]

435:                                              ; preds = %433
  br label %436

436:                                              ; preds = %435, %433
  %437 = phi i32 [ 1, %435 ], [ 0, %433 ]
  %438 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 29
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(764) %438, i8 0, i64 764, i1 false) #8
  br label %439

439:                                              ; preds = %436, %433, %433
  %440 = phi i32 [ 3, %433 ], [ 3, %433 ], [ %437, %436 ]
  %441 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 5
  store volatile i32 %440, ptr %441, align 4
  br label %442

442:                                              ; preds = %439, %433
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef 0) #8
  br label %452

443:                                              ; preds = %24
  %444 = load ptr, ptr %5, align 4
  %445 = load i8, ptr %444, align 1
  %446 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %447 = load ptr, ptr %446, align 4
  store i8 %445, ptr %447, align 4
  %448 = load i8, ptr %444, align 1
  %449 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 41
  store i8 %448, ptr %449, align 4
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef 0) #8
  br label %452

450:                                              ; preds = %24
  %451 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nci_ntf_packet, i32 noundef %17) #9
  br label %452

452:                                              ; preds = %450, %443, %442, %416, %415, %197, %88, %79, %77, %71, %66, %62, %44, %25, %24
  %453 = tail call i32 @nci_core_ntf_packet(ptr noundef %0, i16 noundef zeroext %15, ptr noundef %1) #8
  br label %454

454:                                              ; preds = %452, %22, %19
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_ntf_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_ntf_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_get_conn_info_by_conn_id(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_data_exchange_complete(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_targets_found(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nci_add_new_protocol(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4) unnamed_addr #2 {
  switch i8 %2, label %13 [
    i8 1, label %21
    i8 2, label %6
    i8 4, label %7
    i8 3, label %10
    i8 5, label %11
    i8 6, label %12
  ]

6:                                                ; preds = %5
  br label %21

7:                                                ; preds = %5
  %8 = icmp eq i8 %3, 0
  %9 = select i1 %8, i32 16, i32 64
  br label %21

10:                                               ; preds = %5
  br label %21

11:                                               ; preds = %5
  br label %21

12:                                               ; preds = %5
  br label %21

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nci_ops, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef %0, i8 noundef zeroext %2) #8
  br label %21

21:                                               ; preds = %19, %13, %12, %11, %10, %7, %6, %5
  %22 = phi i32 [ 4, %6 ], [ 8, %10 ], [ 32, %11 ], [ 128, %12 ], [ 2, %5 ], [ %9, %7 ], [ %20, %19 ], [ 0, %13 ]
  %23 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 27
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nci_add_new_protocol) #9
  br label %76

29:                                               ; preds = %21
  switch i8 %3, label %69 [
    i8 0, label %30
    i8 1, label %44
    i8 2, label %52
    i8 6, label %61
  ]

30:                                               ; preds = %29
  %31 = load i16, ptr %4, align 1
  %32 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 2
  store i16 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, ptr %4, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 3
  store i8 %34, ptr %35, align 2
  %36 = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, ptr %4, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 4
  store i8 %37, ptr %38, align 1
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %30
  %41 = zext i8 %37 to i32
  %42 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 5
  %43 = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, ptr %4, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 1 %43, i32 %41, i1 false)
  br label %72

44:                                               ; preds = %29
  %45 = load i8, ptr %4, align 1
  %46 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 8
  store i8 %45, ptr %46, align 1
  %47 = icmp eq i8 %45, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %44
  %49 = zext i8 %45 to i32
  %50 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 9
  %51 = getelementptr inbounds %struct.rf_tech_specific_params_nfcb_poll, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %50, ptr align 1 %51, i32 %49, i1 false)
  br label %72

52:                                               ; preds = %29
  %53 = getelementptr inbounds %struct.rf_tech_specific_params_nfcf_poll, ptr %4, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 10
  store i8 %54, ptr %55, align 4
  %56 = icmp eq i8 %54, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %52
  %58 = zext i8 %54 to i32
  %59 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 11
  %60 = getelementptr inbounds %struct.rf_tech_specific_params_nfcf_poll, ptr %4, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %60, i32 %58, i1 false)
  br label %72

61:                                               ; preds = %29
  %62 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 14
  store i8 1, ptr %62, align 1
  %63 = getelementptr inbounds %struct.rf_tech_specific_params_nfcv_poll, ptr %4, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 15
  store i8 %64, ptr %65, align 2
  %66 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 16
  %67 = getelementptr inbounds %struct.rf_tech_specific_params_nfcv_poll, ptr %4, i32 0, i32 2
  %68 = load i64, ptr %67, align 1
  store i64 %68, ptr %66, align 1
  br label %72

69:                                               ; preds = %29
  %70 = zext i8 %3 to i32
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nci_add_new_protocol, i32 noundef %70) #9
  br label %76

72:                                               ; preds = %61, %57, %52, %48, %44, %40, %30
  %73 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, %22
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %69, %27
  %77 = phi i32 [ 0, %72 ], [ -71, %69 ], [ -71, %27 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_activated(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 457319, i64 2147947290, i64 2147947316, i64 2147947363, i64 2147947385, i64 2147947413, i64 2147947433}
!9 = !{i64 2147959502, i64 2147959528, i64 2147959557, i64 2147959591, i64 2147959622, i64 2147959645}
!10 = !{!"auto-init"}
