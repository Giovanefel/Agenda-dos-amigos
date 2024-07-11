# PROJETO ENTRE AMIGOS

# AQUI ESTA O LINK DA AULA 01  " https://www.youtube.com/watch?v=pMmyjj8qvO0&t=186s "

#tudo que quiser escrever siga esse exemplo e deixa seu comentario. 

# INICIO DA AULA

#AULA 01 

# Adicionar, Editar e Remover contato:
# Contato terão as seguintes informações: nome e telefone
# Podemos ver todos os contatos registrados ou somente um contato;

@agenda =[
{nome:"EuGiovane" , telefone:"219999999"},
{nome:"lucas" , telefone:"819999999"}
]
def todos_contatos                              # 1 mostrar todos os contatos
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
        puts "--------------------------------------"
    end
end

def adicionar_contato                          # 2 adicionar todos os contatos
    print " Nome: "
    nome = gets.chomp
    print " telefone: "
    telefone = gets.chomp

    #encontrado = false                           #chat
    @agenda << {nome: nome, telefone: telefone}
end

def ver_contato                               # 3 mostrar o contato desejado
    print "Qual nome voce deseja:"
    nome = gets.chomp

    encontrado = false                    #chat
    @agenda.each do |contato|
       if contato[:nome].downcase.include?(nome.downcase)
            puts "#{contato[:nome]} - #{contato[:telefone]}"
            puts "-" * 20
            encontrado = true               #chat
        end
    end
    puts "Contato não encontrado" unless encontrado #chat
end

def editar_contato                            # 4 editar contato
    print "qual nome deseja editar?"
   nome = gets.chomp

    @agenda.each do |contato|
        if contato [:nome].downcase == (nome.downcase)
            print" nome para editar, se quiser mesmo nome, aperte enter:"
            nome_salvo = contato [:nome]

            contato[:nome] = gets.chomp
            contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome] 

            print" telefone para editar, se quiser mesmo telefone, aperte enter:"
            telefone_salvo = contato [:telefone]

            contato[:telefone] = gets.chomp
            contato[:telefone] = contato[:telefone].empty? ? telefone_salvo : contato[:telefone] 

                            
        end                             
    end
end

    def remover_contato                        # 5 remover contato
        print "qual nome deseja remover?"
   nome = gets.chomp

   @agenda.each do |contato|
    if contato[:nome].downcase.include?(nome.downcase)
        indice = @agenda.index(contato)
        @agenda.delete_at(indice)
        break
    end
   end
end

loop do 

     puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
    codigo = gets.chomp.to_i
                                       # nos commits anteriores tinha when codigo == 'x' as vezes dava bug
                                       # alterei para apenas when 'x' e esta executando com exito
    case codigo
    when 0
        puts"Até logo"
    break

    when 1
        todos_contatos
    when 2
        adicionar_contato
    when 3
        ver_contato 
    when 4
        editar_contato
    when 5
        remover_contato
    else
        puts " Funçao nao existe, use uma funçao válida"
    end
end
       # faça um teste para verificar se rodou 
       # assim que alterar algo infomar no grupo
    
                                                  # Agenda finalizada!!!!!!!!!



