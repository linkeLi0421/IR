; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/clock.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/clock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_clk_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.clock_info = type { i32, i32, i32, %struct.atomic_t, ptr }
%struct.scmi_msg_resp_clock_protocol_attributes = type { i16, i8, i8 }
%struct.scmi_clock_info = type { [16 x i8], i8, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, [16 x i64] }
%struct.scmi_msg_resp_clock_attributes = type { i32, [16 x i8] }
%struct.scmi_msg_clock_describe_rates = type { i32, i32 }
%struct.scmi_msg_resp_clock_describe_rates = type { i32, [0 x %struct.anon.9] }
%struct.anon.9 = type { i32, i32 }
%struct.scmi_clock_set_rate = type { i32, i32, i32, i32 }
%struct.scmi_clock_set_config = type { i32, i32 }

@scmi_clock = internal constant %struct.scmi_protocol { i8 20, ptr null, ptr @scmi_clock_protocol_init, ptr null, ptr @clk_proto_ops, ptr null }, align 4
@clk_proto_ops = internal constant %struct.scmi_clk_proto_ops { ptr @scmi_clock_count_get, ptr @scmi_clock_info_get, ptr @scmi_clock_rate_get, ptr @scmi_clock_rate_set, ptr @scmi_clock_enable, ptr @scmi_clock_disable }, align 4
@.str = private unnamed_addr constant [29 x i8] c"No. of rates > MAX_NUM_RATES\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @scmi_clock_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_clock_register() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_clock) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_clock_unregister() #0 section ".exit.text" {
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_clock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clock_protocol_init(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, ptr noundef nonnull %5) #8
  %10 = load ptr, ptr %0, align 4
  %11 = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 20, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %207, label %13

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %4) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %0, ptr noundef %20) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load i16, ptr %22, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.clock_info, ptr %11, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.scmi_msg_resp_clock_protocol_attributes, ptr %22, i32 0, i32 1
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.clock_info, ptr %11, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %28, %19
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %4, align 4
  call void %39(ptr noundef %0, ptr noundef %40) #8
  br label %41

41:                                               ; preds = %36, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %42 = getelementptr inbounds %struct.clock_info, ptr %11, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 160) #8
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %46, label %48, !prof !9

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.clock_info, ptr %11, i32 0, i32 4
  store ptr null, ptr %47, align 4
  br label %207

48:                                               ; preds = %41
  %49 = load ptr, ptr %0, align 4
  %50 = extractvalue { i32, i1 } %44, 0
  %51 = call noalias ptr @devm_kmalloc(ptr noundef %49, i32 noundef %50, i32 noundef 3520) #8
  %52 = getelementptr inbounds %struct.clock_info, ptr %11, i32 0, i32 4
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %207, label %54

54:                                               ; preds = %48
  %55 = icmp eq i32 %43, 0
  br i1 %55, label %202, label %56

56:                                               ; preds = %200, %54
  %57 = phi ptr [ %201, %200 ], [ %51, %54 ]
  %58 = phi i32 [ %197, %200 ], [ 0, %54 ]
  %59 = getelementptr %struct.scmi_clock_info, ptr %57, i32 %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %3) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %196

66:                                               ; preds = %56
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.scmi_xfer, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  store i32 %58, ptr %69, align 1
  %70 = load ptr, ptr %3, align 4
  %71 = getelementptr inbounds %struct.scmi_xfer, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %0, ptr noundef %70) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.scmi_msg_resp_clock_attributes, ptr %72, i32 0, i32 1
  %80 = call i32 @strlcpy(ptr noundef %59, ptr noundef %79, i32 noundef 16) #8
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %81, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %3, align 4
  call void %83(ptr noundef %0, ptr noundef %84) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 %87(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %2) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %195

90:                                               ; preds = %66
  store i8 0, ptr %59, align 8
  %91 = load ptr, ptr %6, align 4
  %92 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %3, align 4
  call void %93(ptr noundef %0, ptr noundef %94) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %196

95:                                               ; preds = %78
  %96 = load ptr, ptr %2, align 4
  %97 = getelementptr inbounds %struct.scmi_xfer, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.scmi_xfer, ptr %96, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.scmi_msg_clock_describe_rates, ptr %98, i32 0, i32 1
  br label %102

102:                                              ; preds = %166, %95
  %103 = phi i32 [ 0, %95 ], [ %116, %166 ]
  %104 = phi ptr [ null, %95 ], [ %167, %166 ]
  store i32 %58, ptr %98, align 4
  store i32 %103, ptr %101, align 4
  %105 = load ptr, ptr %6, align 4
  %106 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %2, align 4
  %109 = call i32 %107(ptr noundef %0, ptr noundef %108) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %190

111:                                              ; preds = %102
  %112 = load i32, ptr %100, align 4
  %113 = and i32 %112, 4096
  %114 = icmp eq i32 %113, 0
  %115 = and i32 %112, 4095
  %116 = add i32 %115, %103
  %117 = icmp ugt i32 %116, 16
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str) #9
  br label %175

120:                                              ; preds = %111
  br i1 %114, label %149, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, ptr %100, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, ptr %100, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = zext i32 %123 to i64
  %127 = zext i32 %125 to i64
  %128 = shl nuw i64 %127, 32
  %129 = or i64 %128, %126
  %130 = getelementptr %struct.scmi_clock_info, ptr %57, i32 %58, i32 2
  store i64 %129, ptr %130, align 8
  %131 = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %100, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %100, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = zext i32 %132 to i64
  %136 = zext i32 %134 to i64
  %137 = shl nuw i64 %136, 32
  %138 = or i64 %137, %135
  %139 = getelementptr %struct.scmi_clock_info, ptr %57, i32 %58, i32 2, i32 0, i32 1
  store i64 %138, ptr %139, align 8
  %140 = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %100, i32 5
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %100, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = zext i32 %141 to i64
  %145 = zext i32 %143 to i64
  %146 = shl nuw i64 %145, 32
  %147 = or i64 %146, %144
  %148 = getelementptr %struct.scmi_clock_info, ptr %57, i32 %58, i32 2, i32 0, i32 1, i32 1
  store i64 %147, ptr %148, align 8
  br label %184

149:                                              ; preds = %120
  %150 = getelementptr %struct.scmi_clock_info, ptr %57, i32 %58, i32 2, i32 0, i32 1, i32 %103
  %151 = icmp eq i32 %115, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %152, %149
  %153 = phi ptr [ %164, %152 ], [ %150, %149 ]
  %154 = phi i32 [ %163, %152 ], [ 0, %149 ]
  %155 = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %100, i32 0, i32 1, i32 %154
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds i8, ptr %155, i32 4
  %158 = load i32, ptr %157, align 4
  %159 = zext i32 %156 to i64
  %160 = zext i32 %158 to i64
  %161 = shl nuw i64 %160, 32
  %162 = or i64 %161, %159
  store i64 %162, ptr %153, align 8
  %163 = add nuw nsw i32 %154, 1
  %164 = getelementptr i64, ptr %153, i32 1
  %165 = icmp eq i32 %163, %115
  br i1 %165, label %166, label %152

166:                                              ; preds = %152, %149
  %167 = phi ptr [ %150, %149 ], [ %164, %152 ]
  %168 = load ptr, ptr %6, align 4
  %169 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %168, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = load ptr, ptr %2, align 4
  call void %170(ptr noundef %0, ptr noundef %171) #8
  %172 = icmp ne i32 %115, 0
  %173 = icmp ugt i32 %112, 65535
  %174 = and i1 %173, %172
  br i1 %174, label %102, label %175

175:                                              ; preds = %166, %118
  %176 = phi i32 [ %113, %118 ], [ 0, %166 ]
  %177 = phi i1 [ %114, %118 ], [ true, %166 ]
  %178 = phi i32 [ %103, %118 ], [ %116, %166 ]
  %179 = phi ptr [ %104, %118 ], [ %167, %166 ]
  %180 = icmp ne ptr %179, null
  %181 = select i1 %177, i1 %180, i1 false
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = getelementptr %struct.scmi_clock_info, ptr %57, i32 %58, i32 2
  store i32 %178, ptr %183, align 8
  call void @sort(ptr noundef nonnull %179, i32 noundef %178, i32 noundef 8, ptr noundef nonnull @rate_cmp_func, ptr noundef null) #8
  br label %184

184:                                              ; preds = %182, %175, %121
  %185 = phi i32 [ %113, %121 ], [ %176, %182 ], [ %176, %175 ]
  %186 = lshr exact i32 %185, 12
  %187 = trunc i32 %186 to i8
  %188 = xor i8 %187, 1
  %189 = getelementptr %struct.scmi_clock_info, ptr %57, i32 %58, i32 1
  store i8 %188, ptr %189, align 8
  br label %190

190:                                              ; preds = %184, %102
  %191 = load ptr, ptr %6, align 4
  %192 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %191, i32 0, i32 5
  %193 = load ptr, ptr %192, align 4
  %194 = load ptr, ptr %2, align 4
  call void %193(ptr noundef %0, ptr noundef %194) #8
  br label %195

195:                                              ; preds = %190, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %196

196:                                              ; preds = %195, %90, %65
  %197 = add nuw nsw i32 %58, 1
  %198 = load i32, ptr %42, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = load ptr, ptr %52, align 4
  br label %56

202:                                              ; preds = %196, %54
  %203 = load i32, ptr %5, align 4
  store i32 %203, ptr %11, align 4
  %204 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 2
  %205 = load ptr, ptr %204, align 4
  %206 = call i32 %205(ptr noundef %0, ptr noundef nonnull %11) #8
  br label %207

207:                                              ; preds = %202, %48, %46, %1
  %208 = phi i32 [ %206, %202 ], [ -12, %1 ], [ -12, %48 ], [ -12, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %208
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rate_cmp_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i64, ptr %0, align 8
  %4 = load i64, ptr %1, align 8
  %5 = icmp ult i64 %3, %4
  %6 = icmp ne i64 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clock_count_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.clock_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scmi_clock_info_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr %4(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.clock_info, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.scmi_clock_info, ptr %7, i32 %1
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr null, ptr %8
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clock_rate_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, i8 noundef zeroext 6, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %4) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.scmi_xfer, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store i32 %1, ptr %14, align 1
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = call i32 %17(ptr noundef %0, ptr noundef %18) #8
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr %4, align 4
  br i1 %20, label %22, label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.scmi_xfer, ptr %21, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load i64, ptr %24, align 1
  store i64 %25, ptr %2, align 8
  br label %26

26:                                               ; preds = %22, %11
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  call void %29(ptr noundef %0, ptr noundef %21) #8
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi i32 [ %19, %26 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clock_rate_set(ptr noundef %0, i32 noundef %1, i64 noundef %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %0, i8 noundef zeroext 5, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %4) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.clock_info, ptr %7, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.clock_info, ptr %7, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #8, !srcloc !11
  %20 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #8, !srcloc !12
  %21 = extractvalue { i32, i32 } %20, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %22 = load i32, ptr %15, align 4
  %23 = icmp slt i32 %21, %22
  %24 = xor i1 %23, true
  %25 = zext i1 %23 to i32
  br label %26

26:                                               ; preds = %18, %14
  %27 = phi i1 [ true, %14 ], [ %24, %18 ]
  %28 = phi i32 [ 0, %14 ], [ %25, %18 ]
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.scmi_xfer, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  store i32 %28, ptr %31, align 4
  %32 = getelementptr inbounds %struct.scmi_clock_set_rate, ptr %31, i32 0, i32 1
  store i32 %1, ptr %32, align 4
  %33 = trunc i64 %2 to i32
  %34 = getelementptr inbounds %struct.scmi_clock_set_rate, ptr %31, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = lshr i64 %2, 32
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.scmi_clock_set_rate, ptr %31, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %8, align 4
  br i1 %27, label %44, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %38, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = call i32 %41(ptr noundef %0, ptr noundef %42) #8
  br label %49

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %38, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %4, align 4
  %48 = call i32 %46(ptr noundef %0, ptr noundef %47) #8
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32 [ %43, %39 ], [ %48, %44 ]
  %51 = load i32, ptr %15, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.clock_info, ptr %7, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #8, !srcloc !11
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #8, !srcloc !14
  br label %56

56:                                               ; preds = %53, %49
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %4, align 4
  call void %59(ptr noundef %0, ptr noundef %60) #8
  br label %61

61:                                               ; preds = %56, %3
  %62 = phi i32 [ %50, %56 ], [ %12, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clock_enable(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %0, i8 noundef zeroext 7, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %3) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.scmi_xfer, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.scmi_clock_set_config, ptr %13, i32 0, i32 1
  store i32 1, ptr %14, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %3, align 4
  %19 = call i32 %17(ptr noundef %0, ptr noundef %18) #8
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %3, align 4
  call void %22(ptr noundef %0, ptr noundef %23) #8
  br label %24

24:                                               ; preds = %10, %2
  %25 = phi i32 [ %19, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_clock_disable(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %0, i8 noundef zeroext 7, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %3) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.scmi_xfer, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.scmi_clock_set_config, ptr %13, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %3, align 4
  %19 = call i32 %17(ptr noundef %0, ptr noundef %18) #8
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %3, align 4
  call void %22(ptr noundef %0, ptr noundef %23) #8
  br label %24

24:                                               ; preds = %10, %2
  %25 = phi i32 [ %19, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %25
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148147577}
!11 = !{i64 548345, i64 2148038316, i64 2148038342, i64 2148038389, i64 2148038411, i64 2148038439, i64 2148038459}
!12 = !{i64 2148050415, i64 2148050447, i64 2148050476, i64 2148050510, i64 2148050541, i64 2148050564}
!13 = !{i64 2148147780}
!14 = !{i64 2148052088, i64 2148052114, i64 2148052143, i64 2148052177, i64 2148052208, i64 2148052231}
