.class Lcom/letv/leui/widget/picker/NewTimeWheel$3;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "NewTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/NewTimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/NewTimeWheel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel$3;->this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 2
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel$3;->this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->access$000(Lcom/letv/leui/widget/picker/NewTimeWheel;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel$3;->this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/letv/leui/widget/picker/NewTimeWheel;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->access$102(Lcom/letv/leui/widget/picker/NewTimeWheel;Z)Z

    if-eq p3, p2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel$3;->this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->onUpdateTime()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 0
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "diff"    # I

    .prologue
    return-void
.end method
