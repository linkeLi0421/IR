; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/base.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_events = type { i32, ptr, ptr, i32, i32 }
%struct.scmi_event_ops = type { ptr, ptr, ptr }
%struct.scmi_event = type { i8, i32, i32 }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_revision_info = type { i16, i16, i8, i8, i32, [16 x i8], [16 x i8] }
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
%struct.scmi_msg_resp_base_attributes = type { i8, i8, i16 }
%struct.scmi_msg_resp_base_discover_agent = type { i32, [16 x i8] }
%struct.scmi_base_error_report = type { i64, i32, i8, i32, [0 x i64] }
%struct.scmi_base_error_notify_payld = type { i32, i32, [1024 x i64] }

@scmi_base = internal constant %struct.scmi_protocol { i8 16, ptr null, ptr @scmi_base_protocol_init, ptr null, ptr null, ptr @base_protocol_events }, align 4
@base_protocol_events = internal constant %struct.scmi_protocol_events { i32 16384, ptr @base_event_ops, ptr @base_events, i32 1, i32 1 }, align 4
@.str = private unnamed_addr constant [52 x i8] c"SCMI Protocol v%d.%d '%s:%s' Firmware version 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"No. of Protocol > MAX_PROTOCOLS_IMP\00", align 1
@base_event_ops = internal constant %struct.scmi_event_ops { ptr null, ptr @scmi_base_set_notify_enabled, ptr @scmi_base_fill_custom_report }, align 4
@base_events = internal constant [1 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 8200, i32 8216 }], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @scmi_base_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_base_register() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_base) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_base_unregister() #0 section ".exit.text" {
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_base) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_base_protocol_init(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %9, i8 0, i32 16, i1 false), !annotation !8
  %10 = load ptr, ptr %0, align 4
  %11 = tail call ptr @scmi_revision_area_get(ptr noundef %0) #9
  %12 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0, ptr noundef nonnull %8) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %233

17:                                               ; preds = %1
  %18 = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 16, i32 noundef 3520) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %233, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 4
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i16
  store i16 %23, ptr %11, align 4
  %24 = load i32, ptr %8, align 4
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.scmi_revision_info, ptr %11, i32 0, i32 1
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, ptr noundef %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4, !annotation !8
  %30 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = call ptr %31(ptr noundef %0) #9
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %7) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %20
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %7, align 4
  %43 = call i32 %41(ptr noundef %0, ptr noundef %42) #9
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %7, align 4
  br i1 %44, label %46, label %54

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.scmi_xfer, ptr %45, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load i8, ptr %48, align 2
  %50 = getelementptr inbounds %struct.scmi_revision_info, ptr %32, i32 0, i32 2
  store i8 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.scmi_msg_resp_base_attributes, ptr %48, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.scmi_revision_info, ptr %32, i32 0, i32 3
  store i8 %52, ptr %53, align 1
  br label %54

54:                                               ; preds = %46, %38
  %55 = load ptr, ptr %12, align 4
  %56 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  call void %57(ptr noundef %0, ptr noundef %45) #9
  br label %58

58:                                               ; preds = %54, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4, !annotation !8
  %59 = load ptr, ptr %30, align 4
  %60 = call ptr %59(ptr noundef %0) #9
  %61 = getelementptr inbounds %struct.scmi_revision_info, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %12, align 4
  %63 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %64(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %6) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %58
  %68 = load ptr, ptr %12, align 4
  %69 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %6, align 4
  %72 = call i32 %70(ptr noundef %0, ptr noundef %71) #9
  %73 = icmp eq i32 %72, 0
  %74 = load ptr, ptr %6, align 4
  br i1 %73, label %75, label %78

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.scmi_xfer, ptr %74, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %61, ptr noundef align 1 dereferenceable(16) %77, i32 16, i1 false) #9
  br label %78

78:                                               ; preds = %75, %67
  %79 = load ptr, ptr %12, align 4
  %80 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  call void %81(ptr noundef %0, ptr noundef %74) #9
  br label %82

82:                                               ; preds = %78, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %83 = load ptr, ptr %30, align 4
  %84 = call ptr %83(ptr noundef %0) #9
  %85 = getelementptr inbounds %struct.scmi_revision_info, ptr %84, i32 0, i32 6
  %86 = load ptr, ptr %12, align 4
  %87 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 %88(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %5) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %82
  %92 = load ptr, ptr %12, align 4
  %93 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %5, align 4
  %96 = call i32 %94(ptr noundef %0, ptr noundef %95) #9
  %97 = icmp eq i32 %96, 0
  %98 = load ptr, ptr %5, align 4
  br i1 %97, label %99, label %102

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.scmi_xfer, ptr %98, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %85, ptr noundef align 1 dereferenceable(16) %101, i32 16, i1 false) #9
  br label %102

102:                                              ; preds = %99, %91
  %103 = load ptr, ptr %12, align 4
  %104 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  call void %105(ptr noundef %0, ptr noundef %98) #9
  br label %106

106:                                              ; preds = %102, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !8
  %107 = load ptr, ptr %30, align 4
  %108 = call ptr %107(ptr noundef %0) #9
  %109 = load ptr, ptr %12, align 4
  %110 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 %111(ptr noundef %0, i8 noundef zeroext 5, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %4) #9
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %106
  %115 = load ptr, ptr %12, align 4
  %116 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %115, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %4, align 4
  %119 = call i32 %117(ptr noundef %0, ptr noundef %118) #9
  %120 = icmp eq i32 %119, 0
  %121 = load ptr, ptr %4, align 4
  br i1 %120, label %122, label %127

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.scmi_xfer, ptr %121, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.scmi_revision_info, ptr %108, i32 0, i32 4
  store i32 %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %122, %114
  %128 = load ptr, ptr %12, align 4
  %129 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %128, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  call void %130(ptr noundef %0, ptr noundef %121) #9
  br label %131

131:                                              ; preds = %127, %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !8
  %132 = load ptr, ptr %0, align 4
  %133 = load ptr, ptr %12, align 4
  %134 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 %135(ptr noundef %0, i8 noundef zeroext 6, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %3) #9
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %188

138:                                              ; preds = %131
  %139 = load ptr, ptr %3, align 4
  %140 = getelementptr inbounds %struct.scmi_xfer, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.scmi_xfer, ptr %139, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 4
  store i32 0, ptr %141, align 4
  %145 = load ptr, ptr %12, align 4
  %146 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %145, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %3, align 4
  %149 = call i32 %147(ptr noundef %0, ptr noundef %148) #9
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %183

151:                                              ; preds = %167, %138
  %152 = phi i32 [ %154, %167 ], [ 0, %138 ]
  %153 = load i32, ptr %143, align 4
  %154 = add i32 %153, %152
  %155 = icmp ugt i32 %154, 16
  br i1 %155, label %158, label %156

156:                                              ; preds = %151
  %157 = icmp eq i32 %153, 0
  br i1 %157, label %178, label %159

158:                                              ; preds = %151
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.1) #10
  br label %183

159:                                              ; preds = %159, %156
  %160 = phi i32 [ %165, %159 ], [ 0, %156 ]
  %161 = getelementptr i8, ptr %144, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = add i32 %160, %152
  %164 = getelementptr i8, ptr %18, i32 %163
  store i8 %162, ptr %164, align 1
  %165 = add nuw i32 %160, 1
  %166 = icmp eq i32 %165, %153
  br i1 %166, label %167, label %159

167:                                              ; preds = %159
  %168 = load ptr, ptr %12, align 4
  %169 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %168, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = load ptr, ptr %3, align 4
  call void %170(ptr noundef %0, ptr noundef %171) #9
  store i32 %154, ptr %141, align 4
  %172 = load ptr, ptr %12, align 4
  %173 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %172, i32 0, i32 3
  %174 = load ptr, ptr %173, align 4
  %175 = load ptr, ptr %3, align 4
  %176 = call i32 %174(ptr noundef %0, ptr noundef %175) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %151, label %183

178:                                              ; preds = %156
  %179 = load ptr, ptr %12, align 4
  %180 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = load ptr, ptr %3, align 4
  call void %181(ptr noundef %0, ptr noundef %182) #9
  br label %183

183:                                              ; preds = %178, %167, %158, %138
  %184 = load ptr, ptr %12, align 4
  %185 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %184, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %3, align 4
  call void %186(ptr noundef %0, ptr noundef %187) #9
  br label %188

188:                                              ; preds = %183, %131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @scmi_setup_protocol_implemented(ptr noundef %0, ptr noundef nonnull %18) #9
  %189 = load i16, ptr %11, align 4
  %190 = zext i16 %189 to i32
  %191 = load i16, ptr %26, align 2
  %192 = zext i16 %191 to i32
  %193 = getelementptr inbounds %struct.scmi_revision_info, ptr %11, i32 0, i32 5
  %194 = getelementptr inbounds %struct.scmi_revision_info, ptr %11, i32 0, i32 6
  %195 = getelementptr inbounds %struct.scmi_revision_info, ptr %11, i32 0, i32 4
  %196 = load i32, ptr %195, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %190, i32 noundef %192, ptr noundef %193, ptr noundef %194, i32 noundef %196) #10
  %197 = getelementptr inbounds %struct.scmi_revision_info, ptr %11, i32 0, i32 3
  %198 = load i8, ptr %197, align 1
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %233, label %200

200:                                              ; preds = %228, %188
  %201 = phi i32 [ %229, %228 ], [ 0, %188 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  %202 = load ptr, ptr %12, align 4
  %203 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %202, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = call i32 %204(ptr noundef %0, i8 noundef zeroext 7, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %2) #9
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %228

207:                                              ; preds = %200
  %208 = load ptr, ptr %2, align 4
  %209 = getelementptr inbounds %struct.scmi_xfer, ptr %208, i32 0, i32 2
  %210 = load ptr, ptr %209, align 4
  store i32 %201, ptr %210, align 1
  %211 = load ptr, ptr %12, align 4
  %212 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %211, i32 0, i32 3
  %213 = load ptr, ptr %212, align 4
  %214 = load ptr, ptr %2, align 4
  %215 = call i32 %213(ptr noundef %0, ptr noundef %214) #9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %207
  %218 = load ptr, ptr %2, align 4
  %219 = getelementptr inbounds %struct.scmi_xfer, ptr %218, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.scmi_msg_resp_base_discover_agent, ptr %220, i32 0, i32 1
  %222 = call i32 @strlcpy(ptr noundef nonnull %9, ptr noundef %221, i32 noundef 16) #9
  br label %223

223:                                              ; preds = %217, %207
  %224 = load ptr, ptr %12, align 4
  %225 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %224, i32 0, i32 5
  %226 = load ptr, ptr %225, align 4
  %227 = load ptr, ptr %2, align 4
  call void %226(ptr noundef %0, ptr noundef %227) #9
  br label %228

228:                                              ; preds = %223, %200
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %229 = add nuw nsw i32 %201, 1
  %230 = load i8, ptr %197, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp ult i32 %229, %231
  br i1 %232, label %200, label %233

233:                                              ; preds = %228, %188, %17, %1
  %234 = phi i32 [ %15, %1 ], [ -12, %17 ], [ 0, %188 ], [ 0, %228 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  ret i32 %234
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_revision_area_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_setup_protocol_implemented(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_base_set_notify_enabled(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i8 noundef zeroext 8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %5) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = zext i1 %3 to i32
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.scmi_xfer, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  store i32 %13, ptr %16, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 %19(ptr noundef %0, ptr noundef %20) #9
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %5, align 4
  call void %24(ptr noundef %0, ptr noundef %25) #9
  br label %26

26:                                               ; preds = %12, %4
  %27 = phi i32 [ %21, %12 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %27
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scmi_base_fill_custom_report(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) #8 {
  %8 = icmp ne i8 %1, 0
  %9 = icmp ugt i32 %4, 8200
  %10 = or i1 %8, %9
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  store i64 %2, ptr %5, align 8
  %12 = load i32, ptr %3, align 8
  %13 = getelementptr inbounds %struct.scmi_base_error_report, ptr %5, i32 0, i32 1
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.scmi_base_error_notify_payld, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scmi_base_error_report, ptr %5, i32 0, i32 2
  %17 = lshr i32 %15, 31
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %16, align 4
  %19 = load i32, ptr %14, align 4
  %20 = and i32 %19, 1023
  %21 = getelementptr inbounds %struct.scmi_base_error_report, ptr %5, i32 0, i32 3
  store i32 %20, ptr %21, align 8
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %11
  %24 = phi i32 [ %28, %23 ], [ 0, %11 ]
  %25 = getelementptr %struct.scmi_base_error_notify_payld, ptr %3, i32 0, i32 2, i32 %24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr %struct.scmi_base_error_report, ptr %5, i32 0, i32 4, i32 %24
  store i64 %26, ptr %27, align 8
  %28 = add nuw i32 %24, 1
  %29 = load i32, ptr %21, align 8
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %23, label %31

31:                                               ; preds = %23, %11
  store i32 0, ptr %6, align 4
  br label %32

32:                                               ; preds = %31, %7
  %33 = phi ptr [ %5, %31 ], [ null, %7 ]
  ret ptr %33
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
