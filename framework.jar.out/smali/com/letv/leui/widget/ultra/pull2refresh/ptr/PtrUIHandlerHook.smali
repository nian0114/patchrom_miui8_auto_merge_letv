.class public abstract Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;
.super Ljava/lang/Object;
.source "PtrUIHandlerHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final STATUS_IN_HOOK:B = 0x1t

.field private static final STATUS_PREPARE:B = 0x0t

.field private static final STATUS_RESUMED:B = 0x2t


# instance fields
.field private mResumeAction:Ljava/lang/Runnable;

.field private mStatus:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mResumeAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mResumeAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    return-void
.end method

.method public setResumeAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mResumeAction:Ljava/lang/Runnable;

    return-void
.end method

.method public takeOver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->takeOver(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takeOver(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "resumeAction"    # Ljava/lang/Runnable;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mResumeAction:Ljava/lang/Runnable;

    :cond_0
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->run()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->resume()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
