.class Lcom/android/server/display/AutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetAutoBrightnessGamma()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Adjust gamma callbacks, reset gamma to 1.0f"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v1, 0x3f800000    # 1.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F
    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$002(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 251
    return-void
.end method
