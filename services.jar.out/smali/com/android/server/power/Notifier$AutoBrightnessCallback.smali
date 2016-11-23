.class final Lcom/android/server/power/Notifier$AutoBrightnessCallback;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoBrightnessCallback"
.end annotation


# instance fields
.field public final mCallback:Lcom/letv/leui/os/IScreenAutoBrightnessCallback;

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/IBinder;Lcom/letv/leui/os/IScreenAutoBrightnessCallback;Ljava/lang/String;II)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callback"    # Lcom/letv/leui/os/IScreenAutoBrightnessCallback;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPid"    # I

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/server/power/Notifier$AutoBrightnessCallback;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/android/server/power/Notifier$AutoBrightnessCallback;->mToken:Landroid/os/IBinder;

    .line 712
    iput-object p3, p0, Lcom/android/server/power/Notifier$AutoBrightnessCallback;->mCallback:Lcom/letv/leui/os/IScreenAutoBrightnessCallback;

    .line 713
    iput-object p4, p0, Lcom/android/server/power/Notifier$AutoBrightnessCallback;->mPackageName:Ljava/lang/String;

    .line 714
    iput p5, p0, Lcom/android/server/power/Notifier$AutoBrightnessCallback;->mOwnerUid:I

    .line 715
    iput p6, p0, Lcom/android/server/power/Notifier$AutoBrightnessCallback;->mOwnerPid:I

    .line 716
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/server/power/Notifier$AutoBrightnessCallback;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->handleAutoBrightnessCallbackDeath(Lcom/android/server/power/Notifier$AutoBrightnessCallback;)V
    invoke-static {v0, p0}, Lcom/android/server/power/Notifier;->access$800(Lcom/android/server/power/Notifier;Lcom/android/server/power/Notifier$AutoBrightnessCallback;)V

    .line 721
    return-void
.end method
