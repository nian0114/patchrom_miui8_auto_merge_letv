.class Landroid/app/Activity$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->setImmersionStatusbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 6751
    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 9
    .param p1, "b"    # Z

    .prologue
    .line 6754
    const-wide/16 v4, 0x0

    .line 6755
    .local v4, "time":J
    sget-boolean v6, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 6756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6759
    :cond_0
    iget-object v6, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-nez v6, :cond_2

    .line 6778
    :cond_1
    :goto_0
    return-void

    .line 6762
    :cond_2
    const/high16 v6, -0x1000000

    iget-object v7, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getStatusBarColor()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 6763
    const/4 v2, 0x0

    .line 6764
    .local v2, "info":Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    iget-object v6, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v6}, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->captureScreen(Landroid/app/Activity;)Lcom/letv/leui/util/statusbar/StatusbarColorInfo;

    move-result-object v2

    .line 6765
    if-eqz v2, :cond_1

    .line 6768
    invoke-virtual {v2}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->getStatusbarBgColor()I

    move-result v3

    .line 6769
    .local v3, "newColor":I
    if-eqz v3, :cond_3

    .line 6770
    iget-object v6, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6771
    iget-object v6, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v2}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->getStatusbarIconColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarIconColor(I)V

    .line 6774
    .end local v2    # "info":Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .end local v3    # "newColor":I
    :cond_3
    sget-boolean v6, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 6775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 6776
    .local v0, "costtime":J
    const-string v6, "Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "time cost == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
