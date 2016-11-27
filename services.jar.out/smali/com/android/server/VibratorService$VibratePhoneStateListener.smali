.class Lcom/android/server/VibratorService$VibratePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VibratePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratePhoneStateListener;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratePhoneStateListener;->this$0:Lcom/android/server/VibratorService;

    sget-object v1, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->RINGING:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    # setter for: Lcom/android/server/VibratorService;->mPhoneState:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1702(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;)Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    const-string v0, "VibratorService"

    const-string v1, "mPhoneState = CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratePhoneStateListener;->this$0:Lcom/android/server/VibratorService;

    sget-object v1, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->IDLE:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    # setter for: Lcom/android/server/VibratorService;->mPhoneState:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1702(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;)Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    const-string v0, "VibratorService"

    const-string v1, "mPhoneState = CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratePhoneStateListener;->this$0:Lcom/android/server/VibratorService;

    sget-object v1, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->OFFHOOK:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    # setter for: Lcom/android/server/VibratorService;->mPhoneState:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1702(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;)Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    const-string v0, "VibratorService"

    const-string v1, "mPhoneState = CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
