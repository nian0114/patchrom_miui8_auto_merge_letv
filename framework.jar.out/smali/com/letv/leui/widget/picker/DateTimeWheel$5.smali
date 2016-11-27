.class Lcom/letv/leui/widget/picker/DateTimeWheel$5;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "DateTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/DateTimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$5;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

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
    .line 190
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$5;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->access$702(Lcom/letv/leui/widget/picker/DateTimeWheel;Z)Z

    .line 191
    if-eq p3, p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$5;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    .line 193
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
