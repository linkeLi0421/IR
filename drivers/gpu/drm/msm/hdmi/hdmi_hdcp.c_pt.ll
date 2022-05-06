; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.hdmi_hdcp_reg_data = type { i32, i32, ptr, i32 }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hdmi_hdcp_ctrl = type { ptr, i32, i8, i32, %struct.work_struct, %struct.work_struct, i32, %struct.wait_queue_head, i32, i32, i32, i8, i32, i32, i32, i8, i8, [635 x i8], i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.qcom_scm_hdcp_req = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"hdcp irq %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\016%s:AUTH_SUCCESS_INT received\0A\00", align 1
@__func__.msm_hdmi_hdcp_irq = private unnamed_addr constant [18 x i8] c"msm_hdmi_hdcp_irq\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\016%s: AUTH_FAIL_INT rcvd, LINK0_STATUS=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"still active or activating or no askv. returning\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"hdcp inactive or no aksv. returning\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"HDCP: Off\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\013%s: HDCP is not supported without qfprom\0A\00", align 1
@__func__.msm_hdmi_hdcp_init = private unnamed_addr constant [19 x i8] c"msm_hdmi_hdcp_init\00", align 1
@msm_hdmi_hdcp_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"&hdcp_ctrl->auth_event_queue\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"\013%s: auth prepare failed %d\0A\00", align 1
@__func__.msm_hdmi_hdcp_auth_work = private unnamed_addr constant [24 x i8] c"msm_hdmi_hdcp_auth_work\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\013%s: key exchange failed %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"\013%s: receive r0 failed %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\013%s: verify r0 failed %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\016%s: Authentication Part I successful\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\013%s: wait ksv fifo ready failed %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\013%s: recv ksv fifo failed %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\013%s: write ksv fifo failed %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"\013%s: check v match failed %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\016%s: hdcp authentication canceled\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"\016%s: hdcp is not supported\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"\013%s: hdcp authentication failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"\013%s: ASKV validation failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_auth_prepare = private unnamed_addr constant [27 x i8] c"msm_hdmi_hdcp_auth_prepare\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"HDCP_DEBUG_CTRL=0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"After enabling HDCP Link0_Status=0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"An not ready after enabling HDCP\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"\013%s: AKSV QFPROM doesn't have 20 1's, 20 0's\0A\00", align 1
@__func__.msm_hdmi_hdcp_read_validate_aksv = private unnamed_addr constant [33 x i8] c"msm_hdmi_hdcp_read_validate_aksv\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"\013%s: QFPROM AKSV chk failed (AKSV=%02x%08x)\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"AKSV=%02x%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"HDCP_DDC_STATUS=0x%x, FAIL=%d, NACK0=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"DDC failure detected\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"\016%s: Unable to clear HDCP DDC Failure\0A\00", align 1
@__func__.msm_reset_hdcp_ddc_failures = private unnamed_addr constant [28 x i8] c"msm_reset_hdcp_ddc_failures\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"Before: HDMI_DDC_SW_STATUS=0x%08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"After: HDMI_DDC_SW_STATUS=0x%08x\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"\016%s: msleep is canceled by event %d\0A\00", align 1
@__func__.msm_hdmi_hdcp_msleep = private unnamed_addr constant [21 x i8] c"msm_hdmi_hdcp_msleep\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"\013%s: wait key and an ready failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_auth_part1_key_exchange = private unnamed_addr constant [38 x i8] c"msm_hdmi_hdcp_auth_part1_key_exchange\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"\013%s: read bcaps error, abort\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"\013%s:An/Aksv write failed\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"\013%s:BKSV Process failed\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"Keys not ready(%d). s=%d, l0=%0x08x\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"\013%s: Wait key state timedout\00", align 1
@__func__.msm_hdmi_hdcp_wait_key_an_ready = private unnamed_addr constant [32 x i8] c"msm_hdmi_hdcp_wait_key_an_ready\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"An not ready(%d). l0_status=0x%08x\0A\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"\013%s: Wait An timedout\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"\013%s:BCAPS read failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_recv_bcaps = private unnamed_addr constant [25 x i8] c"msm_hdmi_hdcp_recv_bcaps\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"BCAPS=%02x\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Start DDC read\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"End DDC read %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"\013%s: error: scm_call ret=%d resp=%u\0A\00", align 1
@__func__.msm_hdmi_hdcp_scm_wr = private unnamed_addr constant [21 x i8] c"msm_hdmi_hdcp_scm_wr\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"Link ASKV=%08x%08x\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"\013%s:An write failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_send_aksv_an = private unnamed_addr constant [27 x i8] c"msm_hdmi_hdcp_send_aksv_an\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Link0-An=%08x%08x\0A\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"\013%s:AKSV write failed\0A\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Link0-AKSV=%02x%08x\0A\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"Start DDC write\0A\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"End DDC write %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"\013%s:BKSV read failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_recv_bksv = private unnamed_addr constant [24 x i8] c"msm_hdmi_hdcp_recv_bksv\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c":BKSV=%02x%08x\0A\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"\013: BKSV doesn't have 20 1's and 20 0's\0A\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"\013: BKSV chk fail. BKSV=%02x%02x%02x%02x%02x\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"\013%s:R0' read failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_auth_part1_recv_r0 = private unnamed_addr constant [33 x i8] c"msm_hdmi_hdcp_auth_part1_recv_r0\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"R0'=%02x%02x\0A\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"\013%s: Wait Auth IRQ timeout\0A\00", align 1
@__func__.msm_hdmi_hdcp_auth_part1_verify_r0 = private unnamed_addr constant [35 x i8] c"msm_hdmi_hdcp_auth_part1_verify_r0\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"\013%s: Authentication Part I failed\0A\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"\013%s: BCAPS read failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready = private unnamed_addr constant [45 x i8] c"msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"\013%s: Wait KSV fifo ready timedout\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"\013%s: bstatus error\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"\013%s: BSTATUS write failed\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"\013%s: BSTATUS read failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_recv_check_bstatus = private unnamed_addr constant [33 x i8] c"msm_hdmi_hdcp_recv_check_bstatus\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"\013%s: No downstream devices\0A\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"\013%s: no. of devs connected exceeds max allowed\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"\013%s: no. of cascade conn exceeds max allowed\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"\013%s: Recv ksv fifo timedout\00", align 1
@__func__.msm_hdmi_hdcp_auth_part2_recv_ksv_fifo = private unnamed_addr constant [39 x i8] c"msm_hdmi_hdcp_auth_part2_recv_ksv_fifo\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"\013%s: transfer V failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"\013%s: fail to reset sha engine\0A\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"\013%s: KSV FIFO read failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_recv_ksv_fifo = private unnamed_addr constant [28 x i8] c"msm_hdmi_hdcp_recv_ksv_fifo\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"V' H0\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"V' H1\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"V' H2\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"V' H3\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"V' H4\00", align 1
@__const.msm_hdmi_hdcp_transfer_v_h.reg_data = private unnamed_addr constant [5 x %struct.hdmi_hdcp_reg_data] [%struct.hdmi_hdcp_reg_data { i32 340, i32 32, ptr @.str.75, i32 0 }, %struct.hdmi_hdcp_reg_data { i32 344, i32 36, ptr @.str.76, i32 0 }, %struct.hdmi_hdcp_reg_data { i32 348, i32 40, ptr @.str.77, i32 0 }, %struct.hdmi_hdcp_reg_data { i32 352, i32 44, ptr @.str.78, i32 0 }, %struct.hdmi_hdcp_reg_data { i32 356, i32 48, ptr @.str.79, i32 0 }], align 4
@.str.80 = private unnamed_addr constant [22 x i8] c"\013%s: Read %s failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_transfer_v_h = private unnamed_addr constant [27 x i8] c"msm_hdmi_hdcp_transfer_v_h\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"%s =%x\0A\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"\013%s: Write KSV fifo timedout\00", align 1
@__func__.msm_hdmi_hdcp_auth_part2_write_ksv_fifo = private unnamed_addr constant [40 x i8] c"msm_hdmi_hdcp_auth_part2_write_ksv_fifo\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"HDCP_SHA_STATUS=%08x\0A\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"COMP_DONE\0A\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"BLOCK_DONE\0A\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"\013%s: HDCP V Match timedout\00", align 1
@__func__.msm_hdmi_hdcp_auth_part2_check_v_match = private unnamed_addr constant [39 x i8] c"msm_hdmi_hdcp_auth_part2_check_v_match\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"hdcp auth failed, queue reauth work\0A\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"HDCP REAUTH WORK\0A\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"\016%s: reauth work aborted\0A\00", align 1
@__func__.msm_hdmi_hdcp_reauth_work = private unnamed_addr constant [26 x i8] c"msm_hdmi_hdcp_reauth_work\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"\016%s: abort reauthentication!\0A\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"Queue AUTH WORK\0A\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"\014%s: hw_ddc_clean failed\0A\00", align 1
@__func__.msm_hdmi_hdcp_hw_ddc_clean = private unnamed_addr constant [27 x i8] c"msm_hdmi_hdcp_hw_ddc_clean\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hdcp_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hdmi, ptr %2, i32 0, i32 24
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.hdmi, ptr %2, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 280
  %8 = tail call i32 @msm_readl(ptr noundef %7) #7
  %9 = and i32 %8, 4369
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  br label %47

12:                                               ; preds = %1
  %13 = shl nuw nsw i32 %9, 1
  %14 = or i32 %13, %8
  %15 = and i32 %8, 16
  %16 = icmp eq i32 %15, 0
  %17 = shl nuw nsw i32 %15, 3
  %18 = or i32 %14, %17
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 280
  tail call void @msm_writel(i32 noundef %18, ptr noundef %20) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %9) #7
  %21 = and i32 %8, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %12
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.msm_hdmi_hdcp_irq) #8
  %25 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %29) #7
  %30 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %31

31:                                               ; preds = %28, %23, %12
  br i1 %16, label %47, label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 284
  %35 = tail call i32 @msm_readl(ptr noundef %34) #7
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.msm_hdmi_hdcp_irq, i32 noundef %35) #8
  %37 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %47 [
    i32 3, label %39
    i32 2, label %44
  ]

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.hdmi, ptr %2, i32 0, i32 22
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 5
  %43 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %41, ptr noundef %42) #7
  br label %47

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %45) #7
  %46 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %46, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %47

47:                                               ; preds = %44, %39, %32, %31, %11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hdcp_on(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3) #7
  br label %21

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 24
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @msm_readl(ptr noundef %11) #7
  %13 = and i32 %12, -5
  %14 = load ptr, ptr %10, align 4
  tail call void @msm_writel(i32 noundef %13, ptr noundef %14) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  %15 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 6
  store i32 0, ptr %15, align 4
  store i32 2, ptr %2, align 4
  %16 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 22
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 4
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %19) #7
  br label %21

21:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hdcp_off(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.hdmi, ptr %6, i32 0, i32 24
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.hdmi, ptr %6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 600
  %12 = tail call i32 @msm_readl(ptr noundef %11) #7
  %13 = and i32 %12, -268435457
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 600
  tail call void @msm_writel(i32 noundef %13, ptr noundef %15) #7
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr i8, ptr %16, i32 280
  tail call void @msm_writel(i32 noundef 0, ptr noundef %17) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  %18 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %19, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  %20 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 4
  %21 = tail call zeroext i1 @cancel_work_sync(ptr noundef %20) #7
  %22 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 5
  %23 = tail call zeroext i1 @cancel_work_sync(ptr noundef %22) #7
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr i8, ptr %24, i32 304
  tail call void @msm_writel(i32 noundef 1, ptr noundef %25) #7
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr i8, ptr %26, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %27) #7
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %29 = load ptr, ptr %9, align 4
  %30 = tail call i32 @msm_readl(ptr noundef %29) #7
  %31 = and i32 %30, -5
  %32 = load ptr, ptr %9, align 4
  tail call void @msm_writel(i32 noundef %31, ptr noundef %32) #7
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 600
  %35 = tail call i32 @msm_readl(ptr noundef %34) #7
  %36 = or i32 %35, 268435456
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 600
  tail call void @msm_writel(i32 noundef %36, ptr noundef %38) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %28) #7
  store i32 1, ptr %2, align 4
  br label %39

39:                                               ; preds = %5, %1
  %40 = phi ptr [ @.str.5, %5 ], [ @.str.4, %1 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull %40) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_hdmi_hdcp_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.msm_hdmi_hdcp_init) #8
  br label %27

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 732) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 4
  store i32 -32, ptr %12, align 8
  %13 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 4, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 4, i32 1, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 4, i32 2
  store ptr @msm_hdmi_hdcp_auth_work, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 5
  store i32 -32, ptr %16, align 8
  %17 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 5, i32 1
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 5, i32 1, i32 1
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 5, i32 2
  store ptr @msm_hdmi_hdcp_reauth_work, ptr %19, align 4
  %20 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef nonnull @msm_hdmi_hdcp_init.__key) #7
  store ptr %0, ptr %9, align 8
  %21 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 3
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 11
  store i8 0, ptr %22, align 4
  %23 = tail call zeroext i1 @qcom_scm_hdcp_available() #7
  %24 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %9, i32 0, i32 2
  br i1 %23, label %25, label %26

25:                                               ; preds = %11
  store i8 1, ptr %24, align 8
  br label %27

26:                                               ; preds = %11
  store i8 0, ptr %24, align 8
  br label %27

27:                                               ; preds = %26, %25, %7, %5
  %28 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ %9, %26 ], [ %9, %25 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_hdmi_hdcp_auth_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  %6 = alloca [5 x i32], align 4
  %7 = alloca [5 x i32], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 2
  %13 = alloca [5 x i8], align 1
  %14 = alloca [2 x i32], align 8
  %15 = alloca [2 x i32], align 8
  %16 = alloca [2 x i32], align 8
  %17 = alloca [5 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = getelementptr i8, ptr %0, i32 -16
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 60
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.hdmi, ptr %22, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 24792
  %30 = tail call i32 @msm_readl(ptr noundef %29) #7
  %31 = getelementptr i8, ptr %0, i32 52
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 24796
  %34 = tail call i32 @msm_readl(ptr noundef %33) #7
  %35 = getelementptr i8, ptr %0, i32 56
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %31, align 4
  %37 = tail call i32 @__sw_hweight32(i32 noundef %36) #7
  %38 = load i32, ptr %35, align 4
  %39 = tail call i32 @__sw_hweight32(i32 noundef %38) #7
  %40 = add i32 %39, %37
  %41 = icmp eq i32 %40, 20
  br i1 %41, label %49, label %42

42:                                               ; preds = %26
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.msm_hdmi_hdcp_read_validate_aksv) #8
  %44 = load i32, ptr %35, align 4
  %45 = load i32, ptr %31, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.msm_hdmi_hdcp_read_validate_aksv, i32 noundef %44, i32 noundef %45) #8
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_prepare) #8
  %48 = getelementptr i8, ptr %0, i32 -4
  store i32 0, ptr %48, align 4
  br label %163

49:                                               ; preds = %26
  %50 = load i32, ptr %35, align 4
  %51 = load i32, ptr %31, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %50, i32 noundef %51) #7
  store i8 1, ptr %23, align 4
  br label %52

52:                                               ; preds = %49, %1
  %53 = getelementptr inbounds %struct.hdmi, ptr %22, i32 0, i32 24
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #7
  %55 = getelementptr inbounds %struct.hdmi, ptr %22, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @msm_readl(ptr noundef %56) #7
  %58 = and i32 %57, -5
  %59 = load ptr, ptr %55, align 4
  tail call void @msm_writel(i32 noundef %58, ptr noundef %59) #7
  %60 = load ptr, ptr %55, align 4
  %61 = getelementptr i8, ptr %60, i32 528
  %62 = tail call i32 @msm_readl(ptr noundef %61) #7
  %63 = and i32 %62, -17
  %64 = load ptr, ptr %55, align 4
  %65 = getelementptr i8, ptr %64, i32 528
  tail call void @msm_writel(i32 noundef %63, ptr noundef %65) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #7
  %66 = getelementptr i8, ptr %0, i32 52
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %55, align 4
  %69 = getelementptr i8, ptr %68, i32 648
  tail call void @msm_writel(i32 noundef %67, ptr noundef %69) #7
  %70 = getelementptr i8, ptr %0, i32 56
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %55, align 4
  %73 = getelementptr i8, ptr %72, i32 644
  tail call void @msm_writel(i32 noundef %71, ptr noundef %73) #7
  %74 = load ptr, ptr %55, align 4
  %75 = getelementptr i8, ptr %74, i32 300
  tail call void @msm_writel(i32 noundef -1308643073, ptr noundef %75) #7
  %76 = load ptr, ptr %55, align 4
  %77 = getelementptr i8, ptr %76, i32 604
  tail call void @msm_writel(i32 noundef -267519282, ptr noundef %77) #7
  %78 = load ptr, ptr %55, align 4
  %79 = getelementptr i8, ptr %78, i32 276
  %80 = tail call i32 @msm_readl(ptr noundef %79) #7
  %81 = and i32 %80, -5
  %82 = load ptr, ptr %55, align 4
  %83 = getelementptr i8, ptr %82, i32 276
  tail call void @msm_writel(i32 noundef %81, ptr noundef %83) #7
  %84 = load ptr, ptr %55, align 4
  %85 = getelementptr i8, ptr %84, i32 276
  %86 = tail call i32 @msm_readl(ptr noundef %85) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef %86) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %87 = load ptr, ptr %55, align 4
  %88 = getelementptr i8, ptr %87, i32 272
  tail call void @msm_writel(i32 noundef 1, ptr noundef %88) #7
  %89 = load ptr, ptr %55, align 4
  %90 = getelementptr i8, ptr %89, i32 284
  %91 = tail call i32 @msm_readl(ptr noundef %90) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef %91) #7
  %92 = and i32 %91, 768
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %52
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #7
  br label %95

95:                                               ; preds = %94, %52
  %96 = load ptr, ptr %21, align 4
  %97 = getelementptr inbounds %struct.hdmi, ptr %96, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 296
  %100 = tail call i32 @msm_readl(ptr noundef %99) #7
  %101 = and i32 %100, 65536
  %102 = and i32 %100, 16384
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %100, i32 noundef %101, i32 noundef %102) #7
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %95
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28) #7
  %105 = load ptr, ptr %97, align 4
  %106 = getelementptr i8, ptr %105, i32 288
  tail call void @msm_writel(i32 noundef 1, ptr noundef %106) #7
  %107 = load ptr, ptr %97, align 4
  %108 = getelementptr i8, ptr %107, i32 292
  %109 = tail call i32 @msm_readl(ptr noundef %108) #7
  %110 = or i32 %109, 1
  %111 = load ptr, ptr %97, align 4
  %112 = getelementptr i8, ptr %111, i32 292
  tail call void @msm_writel(i32 noundef %110, ptr noundef %112) #7
  %113 = load ptr, ptr %97, align 4
  %114 = getelementptr i8, ptr %113, i32 296
  %115 = tail call i32 @msm_readl(ptr noundef %114) #7
  %116 = and i32 %115, 65536
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %104
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.msm_reset_hdcp_ddc_failures) #8
  br label %120

120:                                              ; preds = %118, %104
  %121 = load ptr, ptr %97, align 4
  %122 = getelementptr i8, ptr %121, i32 288
  tail call void @msm_writel(i32 noundef 0, ptr noundef %122) #7
  br label %123

123:                                              ; preds = %120, %95
  %124 = icmp eq i32 %102, 0
  br i1 %124, label %166, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %97, align 4
  %127 = getelementptr i8, ptr %126, i32 536
  %128 = tail call i32 @msm_readl(ptr noundef %127) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %128) #7
  %129 = load ptr, ptr %97, align 4
  %130 = getelementptr i8, ptr %129, i32 524
  %131 = tail call i32 @msm_readl(ptr noundef %130) #7
  %132 = or i32 %131, 8
  %133 = load ptr, ptr %97, align 4
  %134 = getelementptr i8, ptr %133, i32 524
  tail call void @msm_writel(i32 noundef %132, ptr noundef %134) #7
  %135 = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 20, i32 noundef 1) #7
  %136 = load ptr, ptr %97, align 4
  %137 = getelementptr i8, ptr %136, i32 524
  %138 = tail call i32 @msm_readl(ptr noundef %137) #7
  %139 = and i32 %138, -9
  %140 = load ptr, ptr %97, align 4
  %141 = getelementptr i8, ptr %140, i32 524
  tail call void @msm_writel(i32 noundef %139, ptr noundef %141) #7
  %142 = load ptr, ptr %97, align 4
  %143 = getelementptr i8, ptr %142, i32 524
  %144 = tail call i32 @msm_readl(ptr noundef %143) #7
  %145 = or i32 %144, 2
  %146 = load ptr, ptr %97, align 4
  %147 = getelementptr i8, ptr %146, i32 524
  tail call void @msm_writel(i32 noundef %145, ptr noundef %147) #7
  %148 = icmp eq i32 %135, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %125
  %150 = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 20, i32 noundef 1) #7
  br label %151

151:                                              ; preds = %149, %125
  %152 = phi i32 [ %135, %125 ], [ %150, %149 ]
  %153 = load ptr, ptr %97, align 4
  %154 = getelementptr i8, ptr %153, i32 524
  %155 = tail call i32 @msm_readl(ptr noundef %154) #7
  %156 = and i32 %155, -3
  %157 = load ptr, ptr %97, align 4
  %158 = getelementptr i8, ptr %157, i32 524
  tail call void @msm_writel(i32 noundef %156, ptr noundef %158) #7
  %159 = load ptr, ptr %97, align 4
  %160 = getelementptr i8, ptr %159, i32 536
  %161 = tail call i32 @msm_readl(ptr noundef %160) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %161) #7
  %162 = icmp eq i32 %152, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %151, %42
  %164 = phi i32 [ -524, %42 ], [ %152, %151 ]
  %165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work, i32 noundef %164) #8
  br label %615

166:                                              ; preds = %151, %123
  %167 = load ptr, ptr %21, align 4
  %168 = getelementptr inbounds %struct.hdmi, ptr %167, i32 0, i32 7
  br label %169

169:                                              ; preds = %180, %166
  %170 = phi i32 [ 100, %166 ], [ %178, %180 ]
  %171 = load ptr, ptr %168, align 4
  %172 = getelementptr i8, ptr %171, i32 284
  %173 = tail call i32 @msm_readl(ptr noundef %172) #7
  %174 = lshr i32 %173, 28
  %175 = and i32 %174, 7
  %176 = icmp eq i32 %175, 3
  br i1 %176, label %183, label %177

177:                                              ; preds = %169
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %170, i32 noundef %175, i32 noundef %173) #7
  %178 = add nsw i32 %170, -1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %196, label %180

180:                                              ; preds = %177
  %181 = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 20, i32 noundef 1) #7
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %169, label %199

183:                                              ; preds = %193, %169
  %184 = phi i32 [ %191, %193 ], [ 100, %169 ]
  %185 = load ptr, ptr %168, align 4
  %186 = getelementptr i8, ptr %185, i32 284
  %187 = tail call i32 @msm_readl(ptr noundef %186) #7
  %188 = and i32 %187, 768
  %189 = icmp eq i32 %188, 768
  br i1 %189, label %202, label %190

190:                                              ; preds = %183
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef %184, i32 noundef %187) #7
  %191 = add nsw i32 %184, -1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 20, i32 noundef 1) #7
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %183, label %199

196:                                              ; preds = %190, %177
  %197 = phi ptr [ @.str.40, %190 ], [ @.str.38, %177 ]
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %197, ptr noundef nonnull @__func__.msm_hdmi_hdcp_wait_key_an_ready) #8
  br label %199

199:                                              ; preds = %196, %193, %180
  %200 = phi i32 [ -110, %196 ], [ %194, %193 ], [ %181, %180 ]
  %201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part1_key_exchange) #8
  br label %322

202:                                              ; preds = %183
  %203 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #7
  store i8 0, ptr %20, align 1, !annotation !10
  %204 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %203, i8 noundef zeroext 64, ptr noundef nonnull %20, i16 noundef zeroext 1) #7
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.msm_hdmi_hdcp_recv_bcaps) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #7
  br label %219

208:                                              ; preds = %202
  %209 = load i8, ptr %20, align 1
  %210 = zext i8 %209 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef %210) #7
  %211 = load i8, ptr %20, align 1
  %212 = and i8 %211, 64
  %213 = icmp eq i8 %212, 0
  %214 = select i1 %213, i32 1, i32 2
  %215 = getelementptr i8, ptr %0, i32 64
  store i32 %214, ptr %215, align 4
  store i32 360, ptr %18, align 4
  %216 = zext i8 %211 to i32
  store i32 %216, ptr %19, align 4
  %217 = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %21, ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #7
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %208, %206
  %220 = phi i32 [ %204, %206 ], [ %217, %208 ]
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part1_key_exchange) #8
  br label %322

222:                                              ; preds = %208
  %223 = load ptr, ptr %168, align 4
  %224 = getelementptr i8, ptr %223, i32 328
  call void @msm_writel(i32 noundef 0, ptr noundef %224) #7
  %225 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %17) #7
  %226 = getelementptr inbounds %struct.hdmi, ptr %225, i32 0, i32 7
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr i8, ptr %227, i32 332
  %229 = call i32 @msm_readl(ptr noundef %228) #7
  store i32 %229, ptr %16, align 8
  %230 = load ptr, ptr %226, align 4
  %231 = getelementptr i8, ptr %230, i32 336
  %232 = call i32 @msm_readl(ptr noundef %231) #7
  %233 = getelementptr inbounds [2 x i32], ptr %16, i32 0, i32 1
  store i32 %232, ptr %233, align 4
  %234 = load ptr, ptr %226, align 4
  %235 = getelementptr i8, ptr %234, i32 324
  %236 = call i32 @msm_readl(ptr noundef %235) #7
  %237 = load ptr, ptr %226, align 4
  %238 = getelementptr i8, ptr %237, i32 328
  %239 = call i32 @msm_readl(ptr noundef %238) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.47, i32 noundef %236, i32 noundef %239) #7
  %240 = trunc i32 %236 to i8
  store i8 %240, ptr %17, align 1
  %241 = lshr i32 %236, 8
  %242 = trunc i32 %241 to i8
  %243 = getelementptr inbounds [5 x i8], ptr %17, i32 0, i32 1
  store i8 %242, ptr %243, align 1
  %244 = lshr i32 %236, 16
  %245 = trunc i32 %244 to i8
  %246 = getelementptr inbounds [5 x i8], ptr %17, i32 0, i32 2
  store i8 %245, ptr %246, align 1
  %247 = lshr i32 %236, 24
  %248 = trunc i32 %247 to i8
  %249 = getelementptr inbounds [5 x i8], ptr %17, i32 0, i32 3
  store i8 %248, ptr %249, align 1
  %250 = and i32 %239, 255
  %251 = trunc i32 %239 to i8
  %252 = getelementptr inbounds [5 x i8], ptr %17, i32 0, i32 4
  store i8 %251, ptr %252, align 1
  %253 = call fastcc i32 @msm_hdmi_ddc_write(ptr noundef %225, i8 noundef zeroext 24, ptr noundef nonnull %16, i16 noundef zeroext 8) #7
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %222
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef %229, i32 noundef %232) #7
  %256 = call fastcc i32 @msm_hdmi_ddc_write(ptr noundef %225, i8 noundef zeroext 16, ptr noundef nonnull %17, i16 noundef zeroext 5) #7
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %255, %222
  %259 = phi ptr [ @.str.48, %222 ], [ @.str.50, %255 ]
  %260 = phi i32 [ %253, %222 ], [ %256, %255 ]
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %259, ptr noundef nonnull @__func__.msm_hdmi_hdcp_send_aksv_an) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #7
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part1_key_exchange) #8
  br label %322

263:                                              ; preds = %255
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef %250, i32 noundef %236) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #7
  %264 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %13) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %13, i8 0, i32 5, i1 false) #7, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7
  store i64 1340029796660, ptr %14, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #7
  %265 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %264, i8 noundef zeroext 0, ptr noundef nonnull %13, i16 noundef zeroext 5) #7
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.msm_hdmi_hdcp_recv_bksv) #8
  br label %311

269:                                              ; preds = %263
  %270 = load i8, ptr %13, align 1
  %271 = zext i8 %270 to i32
  %272 = getelementptr inbounds [5 x i8], ptr %13, i32 0, i32 1
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i32
  %275 = shl nuw nsw i32 %274, 8
  %276 = or i32 %275, %271
  %277 = getelementptr inbounds [5 x i8], ptr %13, i32 0, i32 2
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 16
  %281 = or i32 %276, %280
  %282 = getelementptr inbounds [5 x i8], ptr %13, i32 0, i32 3
  %283 = load i8, ptr %282, align 1
  %284 = zext i8 %283 to i32
  %285 = shl nuw i32 %284, 24
  %286 = or i32 %281, %285
  %287 = getelementptr i8, ptr %0, i32 68
  store i32 %286, ptr %287, align 4
  %288 = getelementptr inbounds [5 x i8], ptr %13, i32 0, i32 4
  %289 = load i8, ptr %288, align 1
  %290 = zext i8 %289 to i32
  %291 = getelementptr i8, ptr %0, i32 72
  store i32 %290, ptr %291, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef %290, i32 noundef %286) #7
  %292 = load i32, ptr %287, align 4
  %293 = call i32 @__sw_hweight32(i32 noundef %292) #7
  %294 = load i32, ptr %291, align 4
  %295 = call i32 @__sw_hweight32(i32 noundef %294) #7
  %296 = add i32 %295, %293
  %297 = icmp eq i32 %296, 20
  br i1 %297, label %313, label %298

298:                                              ; preds = %269
  %299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #8
  %300 = load i8, ptr %288, align 1
  %301 = zext i8 %300 to i32
  %302 = load i8, ptr %282, align 1
  %303 = zext i8 %302 to i32
  %304 = load i8, ptr %277, align 1
  %305 = zext i8 %304 to i32
  %306 = load i8, ptr %272, align 1
  %307 = zext i8 %306 to i32
  %308 = load i8, ptr %13, align 1
  %309 = zext i8 %308 to i32
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %301, i32 noundef %303, i32 noundef %305, i32 noundef %307, i32 noundef %309) #8
  br label %311

311:                                              ; preds = %298, %267
  %312 = phi i32 [ -22, %298 ], [ %265, %267 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #7
  br label %319

313:                                              ; preds = %269
  %314 = load i32, ptr %287, align 4
  store i32 %314, ptr %15, align 8
  %315 = load i32, ptr %291, align 4
  %316 = getelementptr inbounds [2 x i32], ptr %15, i32 0, i32 1
  store i32 %315, ptr %316, align 4
  %317 = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %21, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #7
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %313, %311
  %320 = phi i32 [ %312, %311 ], [ %317, %313 ]
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part1_key_exchange) #8
  br label %322

322:                                              ; preds = %319, %258, %219, %199
  %323 = phi i32 [ %320, %319 ], [ %260, %258 ], [ %220, %219 ], [ %200, %199 ]
  %324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work, i32 noundef %323) #8
  br label %615

325:                                              ; preds = %313
  %326 = getelementptr inbounds %struct.hdmi, ptr %167, i32 0, i32 24
  %327 = call i32 @_raw_spin_lock_irqsave(ptr noundef %326) #7
  %328 = load ptr, ptr %168, align 4
  %329 = getelementptr i8, ptr %328, i32 280
  call void @msm_writel(i32 noundef 230, ptr noundef %329) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %326, i32 noundef %327) #7
  %330 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #7
  store i16 0, ptr %12, align 2, !annotation !10
  %331 = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 125, i32 noundef 1) #7
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %325
  %334 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %330, i8 noundef zeroext 8, ptr noundef nonnull %12, i16 noundef zeroext 2) #7
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %341, label %336

336:                                              ; preds = %333
  %337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part1_recv_r0) #8
  br label %338

338:                                              ; preds = %336, %325
  %339 = phi i32 [ %331, %325 ], [ %334, %336 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #7
  %340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work, i32 noundef %339) #8
  br label %615

341:                                              ; preds = %333
  %342 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %343 = load i8, ptr %342, align 1
  %344 = zext i8 %343 to i32
  %345 = load i8, ptr %12, align 2
  %346 = zext i8 %345 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef %344, i32 noundef %346) #7
  %347 = load i8, ptr %342, align 1
  %348 = zext i8 %347 to i32
  %349 = shl nuw nsw i32 %348, 8
  %350 = load i8, ptr %12, align 2
  %351 = zext i8 %350 to i32
  %352 = or i32 %349, %351
  %353 = getelementptr inbounds %struct.hdmi, ptr %330, i32 0, i32 7
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr i8, ptr %354, i32 316
  call void @msm_writel(i32 noundef %352, ptr noundef %355) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #7
  %356 = load ptr, ptr %21, align 4
  %357 = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 10000, i32 noundef 2) #7
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %366, label %359

359:                                              ; preds = %341
  %360 = getelementptr inbounds %struct.hdmi, ptr %356, i32 0, i32 7
  %361 = load ptr, ptr %360, align 4
  %362 = getelementptr i8, ptr %361, i32 284
  %363 = call i32 @msm_readl(ptr noundef %362) #7
  %364 = and i32 %363, 4096
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %359, %341
  %367 = phi ptr [ @.str.61, %341 ], [ @.str.62, %359 ]
  %368 = phi i32 [ -110, %341 ], [ -22, %359 ]
  %369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %367, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part1_verify_r0) #8
  %370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work, i32 noundef %368) #8
  br label %615

371:                                              ; preds = %359
  %372 = load ptr, ptr %360, align 4
  %373 = getelementptr i8, ptr %372, i32 272
  call void @msm_writel(i32 noundef 257, ptr noundef %373) #7
  %374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work) #8
  %375 = load i32, ptr %215, align 4
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %636, label %377

377:                                              ; preds = %371
  %378 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 0, ptr %10, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #7
  store i8 0, ptr %11, align 1, !annotation !10
  br label %379

379:                                              ; preds = %390, %377
  %380 = phi i32 [ 100, %377 ], [ %388, %390 ]
  %381 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %378, i8 noundef zeroext 64, ptr noundef nonnull %11, i16 noundef zeroext 1) #7
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %452

383:                                              ; preds = %379
  %384 = load i8, ptr %11, align 1
  %385 = and i8 %384, 32
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %383
  %388 = add nsw i32 %380, -1
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %452, label %390

390:                                              ; preds = %387
  %391 = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 20, i32 noundef 1) #7
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %379, label %456

393:                                              ; preds = %383
  %394 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #7
  store i16 0, ptr %8, align 2, !annotation !10
  %395 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %394, i8 noundef zeroext 65, ptr noundef nonnull %8, i16 noundef zeroext 2) #7
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %393
  %398 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.msm_hdmi_hdcp_recv_check_bstatus) #8
  br label %428

399:                                              ; preds = %393
  %400 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %401 = load i8, ptr %400, align 1
  %402 = zext i8 %401 to i16
  %403 = shl nuw i16 %402, 8
  %404 = load i8, ptr %8, align 2
  %405 = zext i8 %404 to i16
  %406 = or i16 %403, %405
  %407 = zext i16 %406 to i32
  %408 = and i32 %407, 127
  %409 = lshr i32 %407, 8
  %410 = and i32 %409, 7
  %411 = and i32 %407, 128
  %412 = and i32 %407, 2048
  %413 = icmp eq i32 %412, 0
  %414 = icmp eq i32 %408, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %399
  %416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.msm_hdmi_hdcp_recv_check_bstatus) #8
  %417 = icmp ne i32 %412, 0
  %418 = icmp ne i32 %411, 0
  br label %428

419:                                              ; preds = %399
  %420 = icmp eq i32 %411, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %419
  %422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.msm_hdmi_hdcp_recv_check_bstatus) #8
  %423 = icmp ne i32 %412, 0
  br label %428

424:                                              ; preds = %419
  %425 = icmp ne i32 %412, 0
  br i1 %413, label %428, label %426

426:                                              ; preds = %424
  %427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.msm_hdmi_hdcp_recv_check_bstatus) #8
  br label %428

428:                                              ; preds = %426, %424, %421, %415, %397
  %429 = phi i16 [ %406, %415 ], [ %406, %424 ], [ %406, %426 ], [ %406, %421 ], [ 0, %397 ]
  %430 = phi i32 [ 0, %415 ], [ %408, %424 ], [ %408, %426 ], [ %408, %421 ], [ 0, %397 ]
  %431 = phi i32 [ %410, %415 ], [ %410, %424 ], [ %410, %426 ], [ %410, %421 ], [ 0, %397 ]
  %432 = phi i1 [ %417, %415 ], [ %425, %424 ], [ true, %426 ], [ %423, %421 ], [ false, %397 ]
  %433 = phi i1 [ %418, %415 ], [ false, %424 ], [ false, %426 ], [ true, %421 ], [ false, %397 ]
  %434 = phi i32 [ -22, %415 ], [ 0, %424 ], [ -22, %426 ], [ -22, %421 ], [ %395, %397 ]
  %435 = trunc i32 %430 to i8
  %436 = getelementptr i8, ptr %0, i32 76
  store i8 %435, ptr %436, align 4
  %437 = getelementptr i8, ptr %0, i32 713
  %438 = zext i1 %432 to i8
  store i8 %438, ptr %437, align 1
  %439 = getelementptr i8, ptr %0, i32 714
  %440 = zext i1 %433 to i8
  store i8 %440, ptr %439, align 2
  %441 = trunc i32 %431 to i8
  %442 = getelementptr i8, ptr %0, i32 77
  store i8 %441, ptr %442, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #7
  %443 = icmp eq i32 %434, 0
  br i1 %443, label %444, label %452

444:                                              ; preds = %428
  store i32 360, ptr %9, align 4
  %445 = load i8, ptr %11, align 1
  %446 = zext i8 %445 to i32
  %447 = zext i16 %429 to i32
  %448 = shl nuw nsw i32 %447, 8
  %449 = or i32 %448, %446
  store i32 %449, ptr %10, align 4
  %450 = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %21, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 1) #7
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %459, label %452

452:                                              ; preds = %444, %428, %387, %379
  %453 = phi ptr [ @.str.65, %428 ], [ @.str.66, %444 ], [ @.str.64, %387 ], [ @.str.63, %379 ]
  %454 = phi i32 [ %434, %428 ], [ %450, %444 ], [ -110, %387 ], [ %381, %379 ]
  %455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %453, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready) #8
  br label %456

456:                                              ; preds = %452, %390
  %457 = phi i32 [ %454, %452 ], [ %391, %390 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %458 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work, i32 noundef %457) #8
  br label %615

459:                                              ; preds = %444
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %460 = getelementptr i8, ptr %0, i32 78
  br label %461

461:                                              ; preds = %473, %459
  %462 = phi i32 [ 100, %459 ], [ %471, %473 ]
  %463 = load ptr, ptr %21, align 4
  %464 = load i8, ptr %436, align 4
  %465 = zext i8 %464 to i16
  %466 = mul nuw nsw i16 %465, 5
  %467 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %463, i8 noundef zeroext 67, ptr noundef %460, i16 noundef zeroext %466) #7
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %476, label %469

469:                                              ; preds = %461
  %470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.msm_hdmi_hdcp_recv_ksv_fifo) #8
  %471 = add nsw i32 %462, -1
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %517, label %473

473:                                              ; preds = %469
  %474 = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 25, i32 noundef 1) #7
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %461, label %521

476:                                              ; preds = %461
  %477 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #7, !annotation !10
  %478 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %477, i8 noundef zeroext 32, ptr noundef nonnull %7, i16 noundef zeroext 4) #7
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %486, label %480

480:                                              ; preds = %503, %497, %491, %486, %476
  %481 = phi i32 [ 0, %476 ], [ 1, %486 ], [ 2, %491 ], [ 3, %497 ], [ 4, %503 ]
  %482 = phi i32 [ %478, %476 ], [ %489, %486 ], [ %495, %491 ], [ %501, %497 ], [ %507, %503 ]
  %483 = getelementptr [5 x %struct.hdmi_hdcp_reg_data], ptr @__const.msm_hdmi_hdcp_transfer_v_h.reg_data, i32 0, i32 %481, i32 2
  %484 = load ptr, ptr %483, align 4
  %485 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.msm_hdmi_hdcp_transfer_v_h, ptr noundef %484) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  br label %517

486:                                              ; preds = %476
  %487 = load i32, ptr %7, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.75, i32 noundef %487) #7
  store i32 340, ptr %6, align 4
  %488 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 1
  %489 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %477, i8 noundef zeroext 36, ptr noundef %488, i16 noundef zeroext 4) #7
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %480

491:                                              ; preds = %486
  %492 = load i32, ptr %488, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.76, i32 noundef %492) #7
  %493 = getelementptr inbounds [5 x i32], ptr %6, i32 0, i32 1
  store i32 344, ptr %493, align 4
  %494 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 2
  %495 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %477, i8 noundef zeroext 40, ptr noundef %494, i16 noundef zeroext 4) #7
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %480

497:                                              ; preds = %491
  %498 = load i32, ptr %494, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.77, i32 noundef %498) #7
  %499 = getelementptr inbounds [5 x i32], ptr %6, i32 0, i32 2
  store i32 348, ptr %499, align 4
  %500 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 3
  %501 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %477, i8 noundef zeroext 44, ptr noundef %500, i16 noundef zeroext 4) #7
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %480

503:                                              ; preds = %497
  %504 = load i32, ptr %500, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78, i32 noundef %504) #7
  %505 = getelementptr inbounds [5 x i32], ptr %6, i32 0, i32 3
  store i32 352, ptr %505, align 4
  %506 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 4
  %507 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %477, i8 noundef zeroext 48, ptr noundef %506, i16 noundef zeroext 4) #7
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %480

509:                                              ; preds = %503
  %510 = load i32, ptr %506, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef %510) #7
  %511 = getelementptr inbounds [5 x i32], ptr %6, i32 0, i32 4
  store i32 356, ptr %511, align 4
  %512 = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %21, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %517

514:                                              ; preds = %509
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 2456721293884, ptr %4, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 1, ptr %5, align 8, !annotation !10
  %515 = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %524, label %517

517:                                              ; preds = %514, %509, %480, %469
  %518 = phi ptr [ @.str.72, %509 ], [ @.str.72, %480 ], [ @.str.73, %514 ], [ @.str.71, %469 ]
  %519 = phi i32 [ %512, %509 ], [ %482, %480 ], [ %515, %514 ], [ -110, %469 ]
  %520 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %518, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part2_recv_ksv_fifo) #8
  br label %521

521:                                              ; preds = %517, %473
  %522 = phi i32 [ %519, %517 ], [ %474, %473 ]
  %523 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work, i32 noundef %522) #8
  br label %615

524:                                              ; preds = %514
  %525 = getelementptr i8, ptr %0, i32 48
  store i32 0, ptr %525, align 4
  br label %526

526:                                              ; preds = %589, %524
  %527 = phi i32 [ 0, %524 ], [ %590, %589 ]
  %528 = phi i32 [ 100, %524 ], [ %582, %589 ]
  %529 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %530 = load i8, ptr %436, align 4
  %531 = zext i8 %530 to i32
  %532 = mul nuw nsw i32 %531, 5
  %533 = icmp eq i32 %527, 0
  br i1 %533, label %549, label %534

534:                                              ; preds = %526
  %535 = getelementptr inbounds %struct.hdmi, ptr %529, i32 0, i32 7
  %536 = load ptr, ptr %535, align 4
  %537 = getelementptr i8, ptr %536, i32 576
  %538 = call i32 @msm_readl(ptr noundef %537) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef %538) #7
  %539 = load i32, ptr %525, align 4
  %540 = icmp eq i32 %539, %532
  br i1 %540, label %541, label %544

541:                                              ; preds = %534
  %542 = and i32 %538, 16
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %578, label %594

544:                                              ; preds = %534
  %545 = and i32 %538, 1
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %578, label %547

547:                                              ; preds = %544
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.85) #7
  %548 = load i32, ptr %525, align 4
  br label %549

549:                                              ; preds = %547, %526
  %550 = phi i32 [ %548, %547 ], [ 0, %526 ]
  %551 = sub i32 %532, %550
  %552 = icmp ult i32 %551, 65
  %553 = select i1 %552, i32 %551, i32 64
  %554 = getelementptr i8, ptr %460, i32 %550
  %555 = icmp eq i32 %553, 0
  br i1 %555, label %575, label %556

556:                                              ; preds = %549
  %557 = add nsw i32 %553, -1
  br label %561

558:                                              ; preds = %561
  %559 = add nuw i32 %562, 1
  %560 = icmp eq i32 %559, %553
  br i1 %560, label %573, label %561

561:                                              ; preds = %558, %556
  %562 = phi i32 [ 0, %556 ], [ %559, %558 ]
  %563 = getelementptr i8, ptr %554, i32 %562
  %564 = load i8, ptr %563, align 1
  %565 = zext i8 %564 to i32
  %566 = shl nuw nsw i32 %565, 16
  %567 = icmp eq i32 %562, %557
  %568 = select i1 %567, i1 %552, i1 false
  %569 = zext i1 %568 to i32
  %570 = or i32 %566, %569
  store i32 580, ptr %3, align 4
  store i32 %570, ptr %2, align 4
  %571 = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %21, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 1) #7
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %558, label %579

573:                                              ; preds = %558
  %574 = load i32, ptr %525, align 4
  br label %575

575:                                              ; preds = %573, %549
  %576 = phi i32 [ %574, %573 ], [ %550, %549 ]
  %577 = add i32 %576, %553
  store i32 %577, ptr %525, align 4
  br label %578

578:                                              ; preds = %575, %544, %541
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %581

579:                                              ; preds = %561
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %580 = icmp eq i32 %571, -11
  br i1 %580, label %581, label %591

581:                                              ; preds = %579, %578
  %582 = add nsw i32 %528, -1
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %586

584:                                              ; preds = %581
  %585 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part2_write_ksv_fifo) #8
  br label %591

586:                                              ; preds = %581
  %587 = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 20, i32 noundef 1) #7
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %591

589:                                              ; preds = %586
  %590 = load i32, ptr %525, align 4
  br label %526

591:                                              ; preds = %586, %584, %579
  %592 = phi i32 [ -110, %584 ], [ %587, %586 ], [ %571, %579 ]
  %593 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work, i32 noundef %592) #8
  br label %615

594:                                              ; preds = %541
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.84) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %595 = load ptr, ptr %21, align 4
  %596 = getelementptr inbounds %struct.hdmi, ptr %595, i32 0, i32 7
  br label %597

597:                                              ; preds = %609, %594
  %598 = phi i32 [ 100, %594 ], [ %605, %609 ]
  %599 = load ptr, ptr %596, align 4
  %600 = getelementptr i8, ptr %599, i32 284
  %601 = call i32 @msm_readl(ptr noundef %600) #7
  %602 = and i32 %601, 1048576
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %636

604:                                              ; preds = %597
  %605 = add nsw i32 %598, -1
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %609

607:                                              ; preds = %604
  %608 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_part2_check_v_match) #8
  br label %612

609:                                              ; preds = %604
  %610 = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %21, i32 noundef 20, i32 noundef 1) #7
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %597, label %612

612:                                              ; preds = %609, %607
  %613 = phi i32 [ -110, %607 ], [ %610, %609 ]
  %614 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work, i32 noundef %613) #8
  br label %615

615:                                              ; preds = %612, %591, %521, %456, %366, %338, %322, %163
  %616 = phi i32 [ %164, %163 ], [ %323, %322 ], [ %339, %338 ], [ %368, %366 ], [ %457, %456 ], [ %522, %521 ], [ %592, %591 ], [ %613, %612 ]
  switch i32 %616, label %621 [
    i32 -125, label %617
    i32 -524, label %619
  ]

617:                                              ; preds = %615
  %618 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work) #8
  br label %654

619:                                              ; preds = %615
  %620 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work) #8
  br label %654

621:                                              ; preds = %615
  %622 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.msm_hdmi_hdcp_auth_work) #8
  %623 = load ptr, ptr %21, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.87) #7
  %624 = getelementptr inbounds %struct.hdmi, ptr %623, i32 0, i32 24
  %625 = call i32 @_raw_spin_lock_irqsave(ptr noundef %624) #7
  %626 = getelementptr inbounds %struct.hdmi, ptr %623, i32 0, i32 7
  %627 = load ptr, ptr %626, align 4
  %628 = call i32 @msm_readl(ptr noundef %627) #7
  %629 = and i32 %628, -5
  %630 = load ptr, ptr %626, align 4
  call void @msm_writel(i32 noundef %629, ptr noundef %630) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %624, i32 noundef %625) #7
  %631 = getelementptr i8, ptr %0, i32 -4
  store i32 4, ptr %631, align 4
  %632 = getelementptr inbounds %struct.hdmi, ptr %623, i32 0, i32 22
  %633 = load ptr, ptr %632, align 4
  %634 = getelementptr i8, ptr %0, i32 16
  %635 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %633, ptr noundef %634) #7
  br label %654

636:                                              ; preds = %597, %371
  %637 = load ptr, ptr %21, align 4
  %638 = getelementptr inbounds %struct.hdmi, ptr %637, i32 0, i32 24
  %639 = call i32 @_raw_spin_lock_irqsave(ptr noundef %638) #7
  %640 = getelementptr inbounds %struct.hdmi, ptr %637, i32 0, i32 7
  %641 = load ptr, ptr %640, align 4
  %642 = getelementptr i8, ptr %641, i32 528
  %643 = call i32 @msm_readl(ptr noundef %642) #7
  %644 = or i32 %643, 16
  %645 = load ptr, ptr %640, align 4
  %646 = getelementptr i8, ptr %645, i32 528
  call void @msm_writel(i32 noundef %644, ptr noundef %646) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %638, i32 noundef %639) #7
  %647 = call i32 @_raw_spin_lock_irqsave(ptr noundef %638) #7
  %648 = load ptr, ptr %640, align 4
  %649 = call i32 @msm_readl(ptr noundef %648) #7
  %650 = or i32 %649, 4
  %651 = load ptr, ptr %640, align 4
  call void @msm_writel(i32 noundef %650, ptr noundef %651) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %638, i32 noundef %647) #7
  %652 = getelementptr i8, ptr %0, i32 -4
  store i32 3, ptr %652, align 4
  %653 = getelementptr i8, ptr %0, i32 -12
  store i32 0, ptr %653, align 4
  br label %654

654:                                              ; preds = %636, %621, %619, %617
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_hdmi_hdcp_reauth_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.88) #7
  %4 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 24
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 600
  %9 = tail call i32 @msm_readl(ptr noundef %8) #7
  %10 = and i32 %9, -268435457
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 600
  tail call void @msm_writel(i32 noundef %10, ptr noundef %12) #7
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 280
  tail call void @msm_writel(i32 noundef 0, ptr noundef %14) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 304
  tail call void @msm_writel(i32 noundef 1, ptr noundef %16) #7
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.hdmi, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 540
  %21 = tail call i32 @msm_readl(ptr noundef %20) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %41, %1
  %24 = phi i32 [ %37, %41 ], [ 100, %1 ]
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr i8, ptr %25, i32 296
  %27 = tail call i32 @msm_readl(ptr noundef %26) #7
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr i8, ptr %28, i32 540
  %30 = tail call i32 @msm_readl(ptr noundef %29) #7
  %31 = and i32 %30, 8
  %32 = and i32 %27, 1040
  %33 = icmp ne i32 %32, 1024
  %34 = icmp eq i32 %31, 0
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %23
  %37 = add nsw i32 %24, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.msm_hdmi_hdcp_hw_ddc_clean) #8
  br label %44

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %2, i32 noundef 20, i32 noundef 1) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %23, label %44

44:                                               ; preds = %41, %39
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.msm_hdmi_hdcp_reauth_work) #8
  br label %69

46:                                               ; preds = %23, %1
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr i8, ptr %47, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %48) #7
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr i8, ptr %50, i32 600
  %52 = tail call i32 @msm_readl(ptr noundef %51) #7
  %53 = or i32 %52, 268435456
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr i8, ptr %54, i32 600
  tail call void @msm_writel(i32 noundef %53, ptr noundef %55) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %49) #7
  %56 = getelementptr i8, ptr %0, i32 -28
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  %59 = icmp eq i32 %58, 30
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = getelementptr i8, ptr %0, i32 -20
  store i32 1, ptr %61, align 4
  store i32 0, ptr %56, align 4
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.msm_hdmi_hdcp_reauth_work) #8
  br label %69

63:                                               ; preds = %46
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.91) #7
  %64 = getelementptr i8, ptr %0, i32 -20
  store i32 2, ptr %64, align 4
  %65 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 22
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %0, i32 -16
  %68 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %66, ptr noundef %67) #7
  br label %69

69:                                               ; preds = %63, %60, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_hdcp_available() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hdcp_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #7
  store ptr null, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #7
  %6 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %2, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = icmp ne i32 %5, 0
  %14 = select i1 %12, i1 true, i1 %13
  %15 = select i1 %14, i32 %5, i32 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %11, i1 true, i1 %16
  br i1 %17, label %46, label %18

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !10
  %19 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #7
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #7
  %20 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 7
  %21 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #7
  %22 = load volatile i32, ptr %6, align 4
  %23 = and i32 %22, %9
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = icmp ne i32 %19, 0
  %27 = select i1 %25, i1 true, i1 %26
  %28 = select i1 %27, i32 %19, i32 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %24, i1 true, i1 %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %31, %18
  %32 = phi i32 [ %41, %31 ], [ %28, %18 ]
  %33 = call i32 @schedule_timeout(i32 noundef %32) #7
  %34 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #7
  %35 = load volatile i32, ptr %6, align 4
  %36 = and i32 %35, %9
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = icmp ne i32 %33, 0
  %40 = select i1 %38, i1 true, i1 %39
  %41 = select i1 %40, i32 %33, i32 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %37, i1 true, i1 %42
  br i1 %43, label %44, label %31

44:                                               ; preds = %31, %18
  %45 = phi i32 [ %28, %18 ], [ %41, %31 ]
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  br label %46

46:                                               ; preds = %44, %3
  %47 = phi i32 [ %15, %3 ], [ %45, %44 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.msm_hdmi_hdcp_msleep, i32 noundef %2) #8
  call void @_clear_bit(i32 noundef %2, ptr noundef %6) #7
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i32 [ -125, %49 ], [ 0, %46 ]
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_ddc_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !10
  store i16 58, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 58, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %2, ptr %14, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43) #7
  %15 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %6, i32 noundef 2) #7
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %36, label %19

19:                                               ; preds = %4
  %20 = load ptr, ptr %15, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 2) #7
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %6, i32 noundef 2) #7
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %15, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %6, i32 noundef 2) #7
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %15, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %6, i32 noundef 2) #7
  %34 = icmp eq i32 %33, 2
  %35 = select i1 %34, i32 0, i32 -5
  br label %36

36:                                               ; preds = %31, %27, %23, %19, %4
  %37 = phi i32 [ 0, %4 ], [ 0, %19 ], [ 0, %23 ], [ 0, %27 ], [ %35, %31 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef %37) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [5 x %struct.qcom_scm_hdcp_req], align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !10
  %8 = icmp ne ptr %2, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 164, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %4
  %13 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %98, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 7
  br label %88

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %98, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 0, i32 1
  %26 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 1
  %27 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 1, i32 1
  %28 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 2
  %29 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 2, i32 1
  %30 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 3
  %31 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 3, i32 1
  %32 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 4
  %33 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %5, i32 0, i32 4, i32 1
  br label %37

34:                                               ; preds = %78
  %35 = sub i32 %38, %80
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %98, label %37

37:                                               ; preds = %34, %24
  %38 = phi i32 [ %35, %34 ], [ %3, %24 ]
  %39 = phi i32 [ %79, %34 ], [ 0, %24 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false)
  %40 = getelementptr i32, ptr %1, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %22
  store i32 %42, ptr %5, align 4
  %43 = getelementptr i32, ptr %2, i32 %39
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %25, align 4
  %45 = add i32 %39, 1
  %46 = icmp ugt i32 %38, 1
  br i1 %46, label %47, label %78

47:                                               ; preds = %37
  %48 = getelementptr i32, ptr %1, i32 %45
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %22
  store i32 %50, ptr %26, align 4
  %51 = getelementptr i32, ptr %2, i32 %45
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %27, align 4
  %53 = add i32 %39, 2
  %54 = icmp eq i32 %38, 2
  br i1 %54, label %78, label %55

55:                                               ; preds = %47
  %56 = getelementptr i32, ptr %1, i32 %53
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %22
  store i32 %58, ptr %28, align 4
  %59 = getelementptr i32, ptr %2, i32 %53
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %29, align 4
  %61 = add i32 %39, 3
  %62 = icmp ugt i32 %38, 3
  br i1 %62, label %63, label %78

63:                                               ; preds = %55
  %64 = getelementptr i32, ptr %1, i32 %61
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %22
  store i32 %66, ptr %30, align 4
  %67 = getelementptr i32, ptr %2, i32 %61
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %31, align 4
  %69 = add i32 %39, 4
  %70 = icmp eq i32 %38, 4
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = getelementptr i32, ptr %1, i32 %69
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %22
  store i32 %74, ptr %32, align 4
  %75 = getelementptr i32, ptr %2, i32 %69
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %33, align 4
  %77 = add i32 %39, 5
  br label %78

78:                                               ; preds = %71, %63, %55, %47, %37
  %79 = phi i32 [ %45, %37 ], [ %53, %47 ], [ %61, %55 ], [ %69, %63 ], [ %77, %71 ]
  %80 = phi i32 [ 1, %37 ], [ 2, %47 ], [ 3, %55 ], [ 4, %63 ], [ 5, %71 ]
  %81 = call i32 @qcom_scm_hdcp_req(ptr noundef nonnull %5, i32 noundef %80, ptr noundef nonnull %6) #7
  %82 = icmp ne i32 %81, 0
  %83 = load i32, ptr %6, align 4
  %84 = icmp ne i32 %83, 0
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %86, label %34

86:                                               ; preds = %78
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.msm_hdmi_hdcp_scm_wr, i32 noundef %81, i32 noundef %83) #8
  br label %98

88:                                               ; preds = %88, %18
  %89 = phi i32 [ 0, %18 ], [ %96, %88 ]
  %90 = getelementptr i32, ptr %1, i32 %89
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr i32, ptr %2, i32 %89
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %19, align 4
  %95 = getelementptr i8, ptr %94, i32 %91
  tail call void @msm_writel(i32 noundef %93, ptr noundef %95) #7
  %96 = add nuw i32 %89, 1
  %97 = icmp eq i32 %96, %3
  br i1 %97, label %98, label %88

98:                                               ; preds = %88, %86, %34, %20, %16
  %99 = phi i32 [ -22, %86 ], [ 0, %16 ], [ 0, %20 ], [ 0, %88 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_hdcp_req(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_ddc_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [32 x i8], align 1
  %6 = alloca [1 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  %7 = getelementptr inbounds i8, ptr %5, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 31, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %8 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %8, align 4, !annotation !10
  store i16 58, ptr %6, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52) #7
  %12 = zext i16 %3 to i32
  store i8 %1, ptr %5, align 1
  %13 = getelementptr inbounds [32 x i8], ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %2, i32 %12, i1 false)
  store ptr %5, ptr %11, align 4
  %14 = add i16 %3, 1
  store i16 %14, ptr %10, align 4
  %15 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %6, i32 noundef 1) #7
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %56, label %19

19:                                               ; preds = %4
  %20 = load ptr, ptr %15, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #7
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %56, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %6, i32 noundef 1) #7
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %56, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %15, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %6, i32 noundef 1) #7
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %56, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %15, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %6, i32 noundef 1) #7
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %15, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %6, i32 noundef 1) #7
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %15, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %6, i32 noundef 1) #7
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %15, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 1) #7
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %15, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %6, i32 noundef 1) #7
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %15, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %6, i32 noundef 1) #7
  %54 = icmp eq i32 %53, 1
  %55 = select i1 %54, i32 0, i32 -5
  br label %56

56:                                               ; preds = %51, %47, %43, %39, %35, %31, %27, %23, %19, %4
  %57 = phi i32 [ 0, %4 ], [ 0, %19 ], [ 0, %23 ], [ 0, %27 ], [ 0, %31 ], [ 0, %35 ], [ 0, %39 ], [ 0, %43 ], [ 0, %47 ], [ %55, %51 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %57) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret i32 %57
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2155696397}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
