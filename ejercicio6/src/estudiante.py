import psycopg2
from tkinter import Tk,Canvas,Frame,Label,Entry,StringVar,OptionMenu,Button,W,E,Listbox,END

root=Tk()
root.title("ESTUDIANTE")

# Departamentos

nrodep = {"CHUQUISACA":1 ,
"LA PAZ":2 ,
"COCHABAMBA":3 ,
"ORURO":4 ,
"POTOSI":5 ,
"TARIJA":6 ,
"SANTA CRUZ":7 ,
"BENI":8 ,
"PANDO":9 }


def nuevo_estudiante(nombre,born,departamento,ci):
    conn=psycopg2.connect(user="postgres",password="123456",host="127.0.0.1",port="5432",database="inf324examen")
    cursor=conn.cursor()
    query='''INSERT INTO persona (CI,nombre,fechaNac,departamento) values (%s,%s,%s,%s)'''
    cursor.execute(query,(ci,nombre,born,nrodep[departamento]))
    print('SAVED')
    conn.commit()
    conn.close()

def listar_estudiantes():
    conn=psycopg2.connect(user="postgres",password="123456",host="127.0.0.1",port="5432",database="inf324examen")
    cursor=conn.cursor()
    query='''SELECT nombre,
       CASE
           WHEN departamento = 1
                THEN 'CHUQUISACA'
           WHEN departamento = 2
                THEN 'LA PAZ'
            WHEN departamento = 3
                            THEN 'COCHABAMBA'
            WHEN departamento = 4
                            THEN 'ORURO'
            WHEN departamento = 5
                            THEN 'POTOSI'
            WHEN departamento = 6
                            THEN 'TARIJA'
            WHEN departamento = 7
                            THEN 'SANTA CRUZ'
            WHEN departamento = 8
                            THEN 'BENI'
            WHEN departamento = 9
                            THEN 'PANDO'
       END 
     FROM persona '''
    cursor.execute(query)
    row =cursor.fetchall()

    listbox=Listbox(frame,width=40,height=12,fg='blue',font=('Arial',6,'bold'))
    listbox.grid(row=10,columnspan=4,sticky=W+E)
    listbox.place(x=120,y=200)
    for x in row:
        xx=x[0].split()
        if (len(xx)==3):
            listbox.insert(END,"{} {} {}| {}".format(xx[0],xx[1],xx[2],x[1]) )
        else:
            listbox.insert(END,"{} {} | {}".format(xx[0],xx[1],x[1]) )
    conn.commit()
    conn.close()

# Canvas
canvas=Canvas(root,height=400,width=700,bg='#49A')
canvas.pack()
# Canvas

frame=Frame(bg='#49A')
frame.place(relx=0.1,rely=0.1,relwidth=0.8,relheight=0.8)

#Etiquetas

label=Label(frame,fg='blue',font=('Arial',12,'bold'),text='Adicionar  a un estudiante ')
label.grid(row=1,column=0)

#Nombre
label=Label(frame,fg='blue',font=('Arial',12,'bold'),text='Nombre:')
label.grid(row=2,column=0)
entry_name=Entry(frame)
entry_name.grid(row=2,column=1)
#fecha
label=Label(frame,fg='blue',font=('Arial',12,'bold'),text='Fecha Nacimiento:')
label.grid(row=3,column=0)
label=Label(frame,fg='blue',font=('Arial',12,'bold'),text='ex: 1998-12-21')
label.grid(row=4,column=0)
entry_fechanacimiento=Entry(frame)
entry_fechanacimiento.grid(row=3,column=1)
#ci
label=Label(frame,fg='blue',font=('Arial',12,'bold'),text='ci:')
label.grid(row=5,column=0)
entry_ci=Entry(frame)
entry_ci.grid(row=5,column=1)
#Departamento
variable = StringVar(root)
variable.set("LA PAZ") # valor inicial

w = OptionMenu(root, variable, "CHUQUISACA",
"COCHABAMBA",
"ORURO",
"POTOSI",
"TARIJA",
"SANTA CRUZ",
"BENI",
"PANDO")
w.pack()
w.place(x=450,y=150)

##SUBMIT
button= Button(frame,text="Adicionar",command=lambda:nuevo_estudiante(
    entry_name.get(),
    entry_fechanacimiento.get(),
    variable.get(),
    entry_ci.get()
))
button.grid(row=19,column=2,sticky=W+E)
button.place(x=120,y=150)
listar_estudiantes()
root['bg'] = '#49A'
root.mainloop()