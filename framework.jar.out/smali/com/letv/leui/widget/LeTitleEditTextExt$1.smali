.class Lcom/letv/leui/widget/LeTitleEditTextExt$1;
.super Ljava/lang/Object;
.source "LeTitleEditTextExt.java"

# interfaces
.implements Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditTextExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTitleEditTextExt;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTitleEditTextExt;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt$1;->this$0:Lcom/letv/leui/widget/LeTitleEditTextExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt$1;->this$0:Lcom/letv/leui/widget/LeTitleEditTextExt;

    # getter for: Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->access$000(Lcom/letv/leui/widget/LeTitleEditTextExt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt$1;->this$0:Lcom/letv/leui/widget/LeTitleEditTextExt;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->onPwdVisibleSwitch()V

    .line 743
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
