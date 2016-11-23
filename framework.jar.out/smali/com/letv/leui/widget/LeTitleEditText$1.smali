.class Lcom/letv/leui/widget/LeTitleEditText$1;
.super Ljava/lang/Object;
.source "LeTitleEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTitleEditText;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$1;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$1;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # invokes: Lcom/letv/leui/widget/LeTitleEditText;->updateFocusedState()V
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$000(Lcom/letv/leui/widget/LeTitleEditText;)V

    .line 62
    return-void
.end method
