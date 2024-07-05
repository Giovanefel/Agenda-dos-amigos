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
]
def todos_contatos
    @agenda.each do |contato|
        puts"#{contato[:nome]} - #{contato[:telefone]}"
    end
end

def adicionar_contato
    print "Nome:"
    nome = gets.chomp
    print "telefone:"
    telefone = gets.chomp

    @agenda << {nome: nome, telefone: telefone}
<<<<<<< HEAD
=======
end

def Ver_contato
    print"Qual nome voce deseja:"
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:contato]. downcase.include?(nome.downcase)
            puts "#{contato[nome]} - #{contato[:telefone]}"
        end
    end
>>>>>>> 400b801ce9f597dad8faba95f691da315e4116ff
end

    def ver_contato
        print"qual nome deseja?"
        nome = gets.chomp

        @agenda.each do |contato|
            if contato [:nome].downcase.include?(nome.downcase)
                puts"#{contato[:nome]} - #{contato[:telefone]}"
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
<<<<<<< HEAD
    when 2
        adicionar_contato
    when 3
        ver_contato 
=======
        puts"lista de contatos"
    
    when codigo == 2
    adicionar_contato
    puts"dados do contato"

    when codigo == 3
        Ver_contato
>>>>>>> 400b801ce9f597dad8faba95f691da315e4116ff
    end
end
# faça um teste para verificar se rodou 
    # assim que alterar algo infomar no grupo
    #continuar 




