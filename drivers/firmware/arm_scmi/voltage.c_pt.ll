; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/voltage.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/voltage.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_voltage_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_xfer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.voltage_info = type { i32, i32, ptr }
%struct.scmi_msg_resp_domain_attributes = type { i32, [16 x i8] }
%struct.scmi_voltage_info = type { i32, i8, i8, i32, [16 x i8], i32, ptr }
%struct.scmi_msg_cmd_describe_levels = type { i32, i32 }
%struct.scmi_msg_resp_describe_levels = type { i32, [0 x i32] }
%struct.scmi_msg_cmd_config_set = type { i32, i32 }
%struct.scmi_msg_cmd_level_set = type { i32, i32, i32 }

@scmi_voltage = internal constant %struct.scmi_protocol { i8 23, ptr null, ptr @scmi_voltage_protocol_init, ptr null, ptr @voltage_proto_ops, ptr null }, align 4
@voltage_proto_ops = internal global %struct.scmi_voltage_proto_ops { ptr @scmi_voltage_domains_num_get, ptr @scmi_voltage_info_get, ptr @scmi_voltage_config_set, ptr @scmi_voltage_config_get, ptr @scmi_voltage_level_set, ptr @scmi_voltage_level_get }, align 4
@.str = private unnamed_addr constant [27 x i8] c"No Voltage domains found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"No. of voltage levels can't exceed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Invalid level descriptor(%d/%d/%d) for voltage dom %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @scmi_voltage_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_voltage_register() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_voltage) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_voltage_unregister() #0 section ".exit.text" {
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_voltage) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_voltage_protocol_init(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, ptr noundef nonnull %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %202

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 4
  %13 = call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 12, i32 noundef 3520) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %202, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %5, align 4
  store i32 %16, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %4) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %202

23:                                               ; preds = %15
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = call i32 %26(ptr noundef %0, ptr noundef %27) #7
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %4, align 4
  br i1 %29, label %35, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  call void %34(ptr noundef %0, ptr noundef %30) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %202

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.scmi_xfer, ptr %30, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 1
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds %struct.voltage_info, ptr %13, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  call void %43(ptr noundef %0, ptr noundef %30) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %44 = getelementptr inbounds %struct.voltage_info, ptr %13, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %196, label %47

47:                                               ; preds = %35
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 36) #7
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %50, label %52, !prof !9

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.voltage_info, ptr %13, i32 0, i32 2
  store ptr null, ptr %51, align 4
  br label %202

52:                                               ; preds = %47
  %53 = load ptr, ptr %0, align 4
  %54 = extractvalue { i32, i1 } %48, 0
  %55 = call noalias ptr @devm_kmalloc(ptr noundef %53, i32 noundef %54, i32 noundef 3520) #7
  %56 = getelementptr inbounds %struct.voltage_info, ptr %13, i32 0, i32 2
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %202, label %58

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %59 = load ptr, ptr %0, align 4
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %2) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %202

66:                                               ; preds = %58
  %67 = load ptr, ptr %2, align 4
  %68 = getelementptr inbounds %struct.scmi_xfer, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %6, align 4
  %71 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %3) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %189

75:                                               ; preds = %66
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.scmi_xfer, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.scmi_msg_resp_domain_attributes, ptr %69, i32 0, i32 1
  br label %80

80:                                               ; preds = %179, %75
  %81 = phi i32 [ 0, %75 ], [ %181, %179 ]
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds %struct.scmi_xfer, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  store i32 %81, ptr %84, align 1
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %2, align 4
  %89 = call i32 %87(ptr noundef %0, ptr noundef %88) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %179

91:                                               ; preds = %80
  %92 = load ptr, ptr %56, align 4
  %93 = getelementptr %struct.scmi_voltage_info, ptr %92, i32 %81
  store i32 %81, ptr %93, align 4
  %94 = load i32, ptr %69, align 4
  %95 = getelementptr %struct.scmi_voltage_info, ptr %92, i32 %81, i32 3
  store i32 %94, ptr %95, align 4
  %96 = getelementptr %struct.scmi_voltage_info, ptr %92, i32 %81, i32 4
  %97 = call i32 @strlcpy(ptr noundef %96, ptr noundef %79, i32 noundef 16) #7
  %98 = load ptr, ptr %3, align 4
  %99 = getelementptr inbounds %struct.scmi_xfer, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.scmi_msg_cmd_describe_levels, ptr %100, i32 0, i32 1
  %102 = getelementptr %struct.scmi_voltage_info, ptr %92, i32 %81, i32 5
  %103 = getelementptr %struct.scmi_voltage_info, ptr %92, i32 %81, i32 6
  %104 = getelementptr %struct.scmi_voltage_info, ptr %92, i32 %81, i32 1
  %105 = getelementptr %struct.scmi_voltage_info, ptr %92, i32 %81, i32 2
  br label %106

106:                                              ; preds = %162, %91
  %107 = phi i32 [ 0, %91 ], [ %144, %162 ]
  %108 = load i32, ptr %93, align 4
  store i32 %108, ptr %100, align 4
  store i32 %107, ptr %101, align 4
  %109 = load ptr, ptr %6, align 4
  %110 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %3, align 4
  %113 = call i32 %111(ptr noundef %0, ptr noundef %112) #7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %170

115:                                              ; preds = %106
  %116 = load i32, ptr %78, align 4
  %117 = trunc i32 %116 to i16
  %118 = and i16 %117, 4095
  %119 = lshr i32 %116, 16
  %120 = load i32, ptr %102, align 4
  %121 = icmp eq i32 %120, 0
  %122 = zext i16 %118 to i32
  br i1 %121, label %123, label %142

123:                                              ; preds = %115
  %124 = and i32 %116, 4096
  %125 = lshr exact i32 %124, 12
  %126 = trunc i32 %125 to i8
  %127 = add nuw nsw i32 %119, %122
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = icmp eq i32 %124, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %129
  %132 = icmp ugt i32 %116, 65535
  %133 = icmp ne i16 %118, 3
  %134 = or i1 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131, %123
  %136 = load i32, ptr %93, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.2, i32 noundef %127, i32 noundef %122, i32 noundef %119, i32 noundef %136) #8
  br label %170

137:                                              ; preds = %131, %129
  %138 = shl nuw nsw i32 %127, 2
  %139 = call noalias ptr @devm_kmalloc(ptr noundef %59, i32 noundef %138, i32 noundef 3520) #7
  store ptr %139, ptr %103, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %170, label %141

141:                                              ; preds = %137
  store i32 %127, ptr %102, align 4
  store i8 %126, ptr %104, align 4
  br label %142

142:                                              ; preds = %141, %115
  %143 = phi i32 [ %127, %141 ], [ %120, %115 ]
  %144 = add i32 %107, %122
  %145 = icmp ugt i32 %144, %143
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = icmp eq i16 %118, 0
  br i1 %147, label %162, label %150

148:                                              ; preds = %142
  %149 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.1, i32 noundef %143) #8
  br label %170

150:                                              ; preds = %159, %146
  %151 = phi i32 [ %160, %159 ], [ 0, %146 ]
  %152 = getelementptr %struct.scmi_msg_resp_describe_levels, ptr %78, i32 0, i32 1, i32 %151
  %153 = load i32, ptr %152, align 4
  %154 = load ptr, ptr %103, align 4
  %155 = add i32 %151, %107
  %156 = getelementptr i32, ptr %154, i32 %155
  store i32 %153, ptr %156, align 4
  %157 = icmp slt i32 %153, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  store i8 1, ptr %105, align 1
  br label %159

159:                                              ; preds = %158, %150
  %160 = add nuw nsw i32 %151, 1
  %161 = icmp eq i32 %160, %122
  br i1 %161, label %162, label %150

162:                                              ; preds = %159, %146
  %163 = load ptr, ptr %6, align 4
  %164 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %163, i32 0, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = load ptr, ptr %3, align 4
  call void %165(ptr noundef %0, ptr noundef %166) #7
  %167 = icmp ne i16 %118, 0
  %168 = icmp ugt i32 %116, 65535
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %106, label %173

170:                                              ; preds = %148, %137, %135, %106
  %171 = phi i32 [ -22, %148 ], [ -22, %135 ], [ %113, %106 ], [ -12, %137 ]
  store i32 0, ptr %102, align 4
  %172 = load ptr, ptr %103, align 4
  call void @devm_kfree(ptr noundef %59, ptr noundef %172) #7
  br label %173

173:                                              ; preds = %170, %162
  %174 = phi i32 [ %171, %170 ], [ 0, %162 ]
  %175 = load ptr, ptr %6, align 4
  %176 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %175, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = load ptr, ptr %2, align 4
  call void %177(ptr noundef %0, ptr noundef %178) #7
  br label %179

179:                                              ; preds = %173, %80
  %180 = phi i32 [ %174, %173 ], [ %89, %80 ]
  %181 = add nuw i32 %81, 1
  %182 = load i32, ptr %44, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %80, label %184

184:                                              ; preds = %179
  %185 = load ptr, ptr %3, align 4
  %186 = load ptr, ptr %6, align 4
  %187 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %186, i32 0, i32 5
  %188 = load ptr, ptr %187, align 4
  call void %188(ptr noundef %0, ptr noundef %185) #7
  br label %189

189:                                              ; preds = %184, %66
  %190 = phi i32 [ %73, %66 ], [ %180, %184 ]
  %191 = load ptr, ptr %6, align 4
  %192 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %191, i32 0, i32 5
  %193 = load ptr, ptr %192, align 4
  %194 = load ptr, ptr %2, align 4
  call void %193(ptr noundef %0, ptr noundef %194) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %195 = icmp eq i32 %190, 0
  br i1 %195, label %198, label %202

196:                                              ; preds = %35
  %197 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %197, ptr noundef nonnull @.str) #8
  br label %198

198:                                              ; preds = %196, %189
  %199 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 2
  %200 = load ptr, ptr %199, align 4
  %201 = call i32 %200(ptr noundef %0, ptr noundef nonnull %13) #7
  br label %202

202:                                              ; preds = %198, %189, %65, %52, %50, %31, %22, %11, %1
  %203 = phi i32 [ %201, %198 ], [ %9, %1 ], [ -12, %11 ], [ %28, %31 ], [ -12, %52 ], [ %190, %189 ], [ %20, %22 ], [ -12, %50 ], [ %63, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %203
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_voltage_domains_num_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.voltage_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scmi_voltage_info_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr %4(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.voltage_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.voltage_info, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.scmi_voltage_info, ptr %11, i32 %1, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr %struct.scmi_voltage_info, ptr %11, i32 %1
  %16 = select i1 %14, ptr null, ptr %15
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi ptr [ null, %2 ], [ %16, %9 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_voltage_config_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.voltage_info, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i8 noundef zeroext 5, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.scmi_xfer, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  store i32 %1, ptr %21, align 4
  %22 = and i32 %2, 15
  %23 = getelementptr inbounds %struct.scmi_msg_cmd_config_set, ptr %21, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = call i32 %26(ptr noundef %0, ptr noundef %27) #7
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %4, align 4
  call void %31(ptr noundef %0, ptr noundef %32) #7
  br label %33

33:                                               ; preds = %18, %11, %3
  %34 = phi i32 [ %28, %18 ], [ -22, %3 ], [ %16, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_voltage_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.voltage_info, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i8 noundef zeroext 6, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.scmi_xfer, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  store i32 %1, ptr %21, align 1
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = call i32 %24(ptr noundef %0, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %4, align 4
  br i1 %27, label %29, label %33

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.scmi_xfer, ptr %28, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 1
  store i32 %32, ptr %2, align 4
  br label %33

33:                                               ; preds = %29, %18
  %34 = load ptr, ptr %12, align 4
  %35 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  call void %36(ptr noundef %0, ptr noundef %28) #7
  br label %37

37:                                               ; preds = %33, %11, %3
  %38 = phi i32 [ %26, %33 ], [ -22, %3 ], [ %16, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_voltage_level_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.voltage_info, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0, i8 noundef zeroext 7, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %5) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.scmi_msg_cmd_level_set, ptr %22, i32 0, i32 1
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scmi_msg_cmd_level_set, ptr %22, i32 0, i32 2
  store i32 %3, ptr %24, align 4
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = call i32 %27(ptr noundef %0, ptr noundef %28) #7
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %5, align 4
  call void %32(ptr noundef %0, ptr noundef %33) #7
  br label %34

34:                                               ; preds = %19, %12, %4
  %35 = phi i32 [ %29, %19 ], [ -22, %4 ], [ %17, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_voltage_level_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.voltage_info, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i8 noundef zeroext 8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.scmi_xfer, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  store i32 %1, ptr %21, align 1
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = call i32 %24(ptr noundef %0, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %4, align 4
  br i1 %27, label %29, label %33

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.scmi_xfer, ptr %28, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 1
  store i32 %32, ptr %2, align 4
  br label %33

33:                                               ; preds = %29, %18
  %34 = load ptr, ptr %12, align 4
  %35 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  call void %36(ptr noundef %0, ptr noundef %28) #7
  br label %37

37:                                               ; preds = %33, %11, %3
  %38 = phi i32 [ %26, %33 ], [ -22, %3 ], [ %16, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %38
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
