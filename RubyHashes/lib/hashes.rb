# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    x = 0
    contacts.each do |key, value|
        contacts[key] = emails[x]
        if emails[x] == nil
            contacts[key] = ""
        end
        x+=1
    end
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
