.class public Lcom/letv/leui/widget/LeDateTimeDialog;
.super Landroid/app/Dialog;
.source "LeDateTimeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private hourStr:Ljava/lang/String;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mSwitch:Lcom/letv/leui/widget/LeSwitch;

.field private mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

.field private minStr:Ljava/lang/String;

.field private onDateSetListener:Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

.field private subtitle:Landroid/widget/TextView;

.field private timeTv:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 48
    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeDateTimeDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeDateTimeDialog;->init(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeDateTimeDialog;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->hourStr:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->minStr:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mLayout:Landroid/widget/RelativeLayout;

    .line 67
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->subtitle:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeSwitch;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mSwitch:Lcom/letv/leui/widget/LeSwitch;

    .line 69
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mSwitch:Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    .line 71
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setOnDateChangedListener(Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;)V

    .line 72
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setCalendar(Ljava/util/Calendar;)V

    .line 74
    return-void
.end method

.method private setOnDateSetListener(Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "dateSetListener"    # Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->onDateSetListener:Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

    .line 100
    return-void
.end method

.method private setSelectLayoutShow(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 95
    iget-object v1, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    .line 107
    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->timeTv:Landroid/widget/TextView;

    .line 108
    return-void
.end method

.method public getDateTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->timeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setLunar(Z)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setLunar(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->onDateSetListener:Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->onDateSetListener:Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mSwitch:Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;->onDateSet(ZLjava/lang/String;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDateTimeDialog;->dismiss()V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDateTimeDialog;->dismiss()V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x102042e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateChangedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "amp"    # Ljava/lang/String;
    .param p3, "hour"    # Ljava/lang/String;
    .param p4, "mins"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->subtitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->hourStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->minStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method
